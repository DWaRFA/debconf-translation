#!/usr/bin/perl -w

=head1 NAME

Debconf::Element::Gnome::Boolean - check box widget

=cut

package Debconf::Element::Gnome::Boolean;
use strict;
use Gtk;
use Gnome;
use base qw(Debconf::Element);

=head1 DESCRIPTION

This is a check box widget.

=cut

sub init {
	my $this=shift;

	$this->widget(Gtk::CheckButton->new);
	$this->widget->show;
	$this->widget->set_active(($this->question->value eq 'true') ? 1 : 0);
}

=item value

The value is true if the checkbox is checked, false otherwise.

=cut

sub value {
	my $this=shift;

	if ($this->widget->get_active) {
	    return "true";
	} else {
	    return "false";
	}
}

=back

=head1 AUTHOR

Joey Hess <joey@kitenet.net>

=cut

1
