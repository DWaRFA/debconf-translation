#!/usr/bin/perl -w

=head1 NAME

Debian::DebConf::FrontEnd - base FrontEnd

=cut

=head1 DESCRIPTION

This is the base of the FrontEnd class. Each FrontEnd presents a
user interface of some kind to the user, and handles generating and
communicating with Elements to form that FrontEnd.

=cut

=head1 METHODS

=cut

package Debian::DebConf::FrontEnd;
use Debian::DebConf::Priority;
use Debian::DebConf::Element;
use Debian::DebConf::Config;
use Debian::DebConf::Base;
use Debian::DebConf::Log ':all';
use strict;
use vars qw(@ISA);
@ISA=qw(Debian::DebConf::Base);

=head2 new

Creates a new FrontEnd object and returns it.

=cut

sub new {
	my $proto = shift;
	my $class = ref($proto) || $proto;
	my $self  = bless $proto->SUPER::new(@_), $class;
	$self->{elements}=[];
	$self->{interactive}='';
	$self->{capb}='';
	$self->{title}="";
	return $self
}

=head2 makeelement

Create an Element from a Question. Pass in the Question, the Element is
returned.

=cut

sub makeelement {
	my $this=shift;
	my $question=shift;

	my $elt=Debian::DebConf::Element->new($question);
	$elt->frontend($this);
	$elt->question($question);
	return $elt;
}

=head2 add

Add a Question to the list to be displayed to the user. Pass the Question and
text indicating the priority of the Question. This creates an Element and adds
it to the array in the elements property. Returns the created element, or
false if no element was made.

=cut

sub add {
	my $this=shift;
	my $question=shift || die "\$question is undefined";
	my $priority=shift;

	my $element=$this->visible($question, $priority);
	push @{$this->{elements}}, $element if $element;
	return $element;
}

=head2

Pass this a Question and a priority, it determines if the Question is visible.
If so, it returns an input element to use to ask the Question.

=cut

sub visible {
	my $this=shift;
	my $question=shift || die "\$question is undefined";
	my $priority=shift;
	
	# Noninteractive frontends never show anything.
	return '' if ! $this->interactive;
	
	# Skip items are unimportant.
	return '' unless Debian::DebConf::Priority::high_enough($priority);
	
	# Set showold to ask even default questions.
	return '' if Debian::DebConf::Config::showold() eq 'false' &&
		$question->flag_isdefault eq 'false';
	
	# Create an input element and ask it.
	my $element=$this->makeelement($question);
	return unless $element->visible;
	
	return $element;
}

=head2 go

Display accumulated Elements to the user. The Elements are in the elements
property, and that property is cleared after the Elements are presented.

Returns true. (Children may override it to return false if the user
hits a back button.)

=cut

sub go {
	my $this=shift;

	debug "preparing to ask questions";
	map { $_->show} @{$this->{elements}};
	$this->clear;
	return 1;
}

=head2 clear

Clear out the accumulated elements.

=cut

sub clear {
	my $this=shift;
	
	$this->{elements}=[];
}

=head2 default_title

This sets the title property to a default. Pass in the name of the
package that is being configured.

=cut

sub default_title {
	my $this=shift;
	
	$this->title("Configuring ".ucfirst(shift));
}

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
