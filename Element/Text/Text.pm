#!/usr/bin/perl -w

=head1 NAME

Debian::DebConf::Element::Text::Text - show text to the user

=cut

package Debian::DebConf::Element::Text::Text;
use strict;
use Debian::DebConf::Element; # perlbug
use base qw(Debian::DebConf::Element);

=head1 DESCRIPTION

This is a peice of text to output to the user.

=cut

sub show {
	my $this=shift;

	$this->frontend->display($this->question->description."\n".
		$this->question->extended_description."\n");

	return '';
}

1
