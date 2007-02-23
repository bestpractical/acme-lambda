package Acme::Lambda;

use warnings;
use strict;
use utf8;

use base qw(Exporter);

our @EXPORT = qw(lambda λ);
our @EXPORT_OK = @EXPORT;

sub lambda(&) {
    my $sub = shift;
    return $sub;
}

*λ = \&lambda;

=head1 NAME

Acme::Lambda - Perl with lambdas!

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

Acme::Lambda brings the power of lambda to perl! It exports lambda and
λ subroutines that take a code block and return it.

    use Acme::Lambda;

    my $square = lambda { $_ * $_ };
    print $square->(4);         # 16

    use utf8
    my $cube = λ {$_ * $_ * $_};
    print $cube->(3);           # 27

=head1 EXPORT

By default, lambda and λ.

C<use Acme::Lambda();> to avoid exports.

=head1 AUTHOR

Nelson Elhage, C<< <nelhage at mit.edu> >>

=head1 BUGS

Please report any bugs or feature requests to
C<bug-acme-lambda at rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Acme-Lambda>.
I will be notified, and then you'll automatically be notified of progress on
your bug as I make changes.

=head1 ACKNOWLEDGEMENTS

I<Structure and Interpretation of Computer Programs>

=head1 LICENSE

Jifty is Copyright 2005-2006 Best Practical Solutions, LLC.
Jifty is distributed under the same terms as Perl itself.

=cut

1; # End of Acme::Lambda
