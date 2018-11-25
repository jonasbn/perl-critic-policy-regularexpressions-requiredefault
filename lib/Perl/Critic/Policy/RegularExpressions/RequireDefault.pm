package Perl::Critic::Policy::RegularExpressions::RequireDefault;

use 5.006001;
use strict;
use warnings;
use Readonly;

use Perl::Critic::Utils qw{ :severities };

use base 'Perl::Critic::Policy';

our $VERSION = '0.01';

#-----------------------------------------------------------------------------

Readonly::Scalar my $DESC => q{Regular expression without "/a" or "/aa" flag};
Readonly::Scalar my $EXPL => q{Use regular expression "/a" or "/aa" flag};

#-----------------------------------------------------------------------------

sub default_severity { return $SEVERITY_MEDIUM }
sub default_themes   { return qw< security > }

sub applies_to {
    return qw<
        PPI::Token::Regexp::Match
        PPI::Token::Regexp::Substitute
        PPI::Token::QuoteLike::Regexp
    >;
}

#-----------------------------------------------------------------------------

sub violates {
    my ( $self, $elem, $doc ) = @_;

    my $re = $doc->ppix_regexp_from_element($elem)
        or return;
    $re->modifier_asserted('a')
        or $re->modifier_asserted('aa')
        or return $self->violation( $DESC, $EXPL, $elem );

    return;    # ok!;
}

1;

__END__

=pod

=head1 NAME

Perl::Critic::Policy::RegularExpressions::RequireDefault - Always use the C</a> or C</aa> modifier with regular expressions.

=head1 VERSION

This documentation describes version 0.01

=head1 AFFILIATION

This policy has no affiliation

=head1 DESCRIPTION

The C</a> modifier's purpose is to allow code that is to work mostly on ASCII data to not have to concern itself with Unicode.

This policy is inspired by L<Perl::Critic::Policy::RegularExpressions::RequireExtendedFormatting|https://metacpan.org/pod/Perl::Critic::Policy::RegularExpressions::RequireExtendedFormatting> and many implementation details was lifted from this particular distribution.

=head1 CONFIGURATION AND ENVIRONMENT

This policy is not configurable at this time. Please see the TODO L</section>.

=head1 INCOMPATIBILITIES

This ditribution holds no known incompatibilities at this time, please see L</DEPENDENCIES AND REQUIREMENTS> for details on version requirements.

=head1 BUGS AND LIMITATIONS

This ditribution holds no known incompatibilities at this time, please refer to the L<the issue listing on GitHub|https://github.com/jonasbn/perl-critic-policy-regularexpressions-requiredefault/issues> for more up to date information.

=head1 BUG REPORTING

Please report bugs via L<GitHub|https://github.com/jonasbn/perl-critic-policy-regularexpressions-requiredefault/issues>.

=head1 TEST AND QUALITY

This distribution aims to adhere to the Perl::Critic::Policy standards and Perl best practices and recommendations.

=head1 DEPENDENCIES AND REQUIREMENTS

This distribution requires:

=over

=item * Perl 5.8
=item * Carp
=item * Readonly
=item * Perl::Critic::Policy
=item * Perl::Critic::Utils

=back

Please see the lising in the file: F<cpanfile>, included with the distribution for a complete listing and description for configuration, test and development.


    ---------------------------- ------ ------ ------ ------ ------ ------ ------
    File                           stmt   bran   cond    sub    pod   time  total
    ---------------------------- ------ ------ ------ ------ ------ ------ ------
    ...essions/RequireDefault.pm   95.8   75.0  100.0   90.0  100.0  100.0   93.3
    Total                          95.8   75.0  100.0   90.0  100.0  100.0   93.3
    ---------------------------- ------ ------ ------ ------ ------ ------ ------

=head1 NOTES

=head1 TODO

=over

=item * Please see L<the issue listing on GitHub|https://github.com/jonasbn/perl-critic-policy-regularexpressions-requiredefault/issues>

=back

=head1 SEE ALSO

=over

=item * L<Perl regular expression documentation: perlre|https://perldoc.perl.org/perlre.html>

=item * L<Perl::Critic::Policy::RegularExpressions::RequireExtendedFormatting|https://metacpan.org/pod/Perl::Critic::Policy::RegularExpressions::RequireExtendedFormatting>

=back

=head1 MOTIVATION

The motivation for this Perl::Critic policy came from a L<tweet|https://mobile.twitter.com/jmaslak/status/1008896883169751040> by L<@joel|https://mobile.twitter.com/jmaslak>

    | Perl folk: Looking for a PR challenge task? Check for \d in regexes
    | that really should be [0-9] or should have the /a regex modifier.
    | Perl is multinational by default! #TPCiSLC

=head1 AUTHOR

=over

=item * jonasbn <jonasbn@cpan.org>

=back

=head1 ACKNOWLEDGEMENTS

=over

=item * L<Joelle Maslak (@joel)|https://twitter.com/jmaslak> / L<JMASLAK|https://metacpan.org/author/JMASLAK>

=back

=head1 LICENSE AND COPYRIGHT

Perl::Critic::Policy::RegularExpressions::RequireDefault is (C) by jonasbn 2018

Perl::Critic::Policy::RegularExpressions::RequireDefault is released under the Artistic License 2.0

Please see the LICENSE file included with the distribution of this module

=cut
