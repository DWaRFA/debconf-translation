#!/usr/bin/perl -w

=head1 NAME

Debconf::Element::Kde::Select - select list widget

=cut

package Debconf::Element::Kde::Select;
use strict;
use Qt;
use base qw(Debconf::Element::Kde Debconf::Element::Select);

=head1 DESCRIPTION

A drop down select list widget.

=head1 METHODS

=over 4

=item create

Creates and sets up the widget.

=cut

sub create {
	my $this=shift;
	
	my $default=$this->translate_default;
	my @choices=$this->question->choices_split;
	
	$this->SUPER::create(@_);
	$this->startsect;
	$this->widget(Qt::ComboBox($this->cur->top));
	$this->widget->show;
	$this->widget->insertStringList(\@choices, 0);
	if (defined($default) and length($default) != 0) {
		$this->widget->setCurrentText($default);
	}
	$this->addhelp;
	my $b = $this->addhbox;
	$b->addWidget($this->description);
	$b->addWidget($this->widget);
	$this->endsect;
}

=item value

The value is the currently selected list item.

=cut

sub value {
	my $this=shift;
	
	my @choices=$this->question->choices_split;
	return $this->translate_to_C($this->widget->currentText());
}

=back

=head1 AUTHOR

Peter Rockai <mornfall@logisys.dyndns.org>

=cut

1
