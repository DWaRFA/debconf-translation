#!/usr/bin/perl -w

=head1 NAME

Debian::DebConf::AutoSelect -- automatic FrontEnd selection library.

=cut

=head1 DESCRIPTION

This library makes it easy to create FrontEnd and ConfModule objects. It starts
with the desired type of object, and tries to make it. If that fails, it
progressivly falls back to other types.

=cut

package Debian::DebConf::AutoSelect;
use strict;
use Debian::DebConf::Config;

my %fallback=(
	# preferred frontend		# fall back to
	'Web'			=>	'Gtk',
	'Dialog'		=>	'Text',
	'Gtk'			=>	'Dialog',
	'Text'			=>	'Dialog',
);

my $frontend;
my $type;

=head1 METHODS

=cut

=head2 frontend

Creates and returns a FrontEnd object.

=cut

sub frontend {
	my $script=shift;

	$type=Debian::DebConf::Config::frontend() unless $type;

	my %seen;
	while ($type ne '') {
		if ($ENV{DEBCONF_DEBUG}) {
			print STDERR "Debconf: trying frontend $type\n";
		}
		$frontend=eval qq{
			use Debian::DebConf::FrontEnd::$type;
			Debian::DebConf::FrontEnd::$type->new();
		};
		last if defined $frontend;
		$type=$fallback{$type};
		
		if ($ENV{DEBCONF_DEBUG}) {
			print STDERR "Debconf: failed to initialize: $@\n";
		}

		# Prevent loops; only try each frontend once.
		last if $seen{$type};
		$seen{$type}=1;
	}
	
	if (! $frontend) {
		die "Unable to start a frontend: $@";
	}

	return $frontend;
}

=head2 confmodule

Pass the script (if any) the ConfModule will start up, and this creates and
returns a ConfModule to match the last FrontEnd returned by frontend()

=cut

sub confmodule {
	my $script=shift;
	
	# For some reason, if I don't reference $frontend here in some way, it
	# doesn't make it into the eval. Odd.
	my $a=$frontend;
	
	my $confmodule=eval qq{
		use Debian::DebConf::ConfModule::$type;
		Debian::DebConf::ConfModule::$type->new(\$frontend);
	};
	die $@ if $@;
	
	$confmodule->startup($script) if $script;
	
	return $confmodule;
}

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1