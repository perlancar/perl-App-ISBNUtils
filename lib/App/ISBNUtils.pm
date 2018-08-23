package App::ISBNUtils;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our %SPEC;

$SPEC{format_isbn10} = {
    v => 1.1,
    summary => 'Format ISBN 10, print error if number is invalid',
    description => <<'_',

You can feed an ISBN 13 and it will be converted to ISBN 10 (as long as the ISBN
13 prefix is 978-).

_
    args => {
        isbn10 => {
            schema => 'isbn10*',
            req => 1,
            pos => 0,
        },
    },
};
sub format_isbn10 {
    my %args = @_;
    [200, "OK", $args{isbn10}];
}

$SPEC{format_isbn13} = {
    v => 1.1,
    summary => 'Format ISBN 13, print error if number is invalid',
    description => <<'_',

You can feed an ISBN 10 and it will be converted to ISBN 13.

_
    args => {
        isbn13 => {
            schema => 'isbn13*',
            req => 1,
            pos => 0,
        },
    },
};
sub format_isbn13 {
    my %args = @_;
    [200, "OK", $args{isbn13}];
}

1;
# ABSTRACT: Command-line utilities related to ISBN

=head1 DESCRIPTION

This distribution contains the following command-line utilities related to ISBN:

#INSERT_EXECS_LIST


=head1 SEE ALSO

L<isbn> from L<App::isbn>

=cut
