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

sub default_severity     { return $SEVERITY_MEDIUM           }
sub default_themes       { return qw< security > }
sub applies_to           {
    return qw<
        PPI::Token::Regexp::Match
        PPI::Token::Regexp::Substitute
        PPI::Token::QuoteLike::Regexp
    >;
}

#-----------------------------------------------------------------------------

sub violates {
    my ( $self, $elem, $doc ) = @_;

    #REVIEW: Evaluate how we should handle the following two lines.
    #        Should strict option be for /aa only
    my $match = $elem->get_match_string();
    return if not $self->{_strict} and $match =~ m< \A [\s\w]* \z >xms;

    my $re = $doc->ppix_regexp_from_element( $elem )
        or return;
    $re->modifier_asserted( 'a' ) or $re->modifier_asserted( 'aa' )
        or return $self->violation( $DESC, $EXPL, $elem );

    return; # ok!;
}

1;

__END__

=pod

=head1 NAME

Perl::Critic::Policy::RegularExpressions::RequireDefault - Always use the C</a> or C</aa> modifier with regular expressions.

This policy is inspired by and many implementation details was lifted from L<Perl::Critic::Policy::RegularExpressions::RequireExtendedFormatting|https://metacpan.org/pod/Perl::Critic::Policy::RegularExpressions::RequireExtendedFormatting>

=head1 SEE ALSO

=over

=item * https://perldoc.perl.org/perlre.html

=back

=cut
