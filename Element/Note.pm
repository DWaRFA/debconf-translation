#!/usr/bin/perl -w
#
# Each Element::Note represents a note to show to the user or log.

package Element::Note;
use strict;
use Element::Text;
use vars qw(@ISA);
@ISA=qw(Element::Text);

# Save the note.
sub ask {
	my $this=shift;
	
	# TODO
}

1
