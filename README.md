# NAME

Perl::Critic::Policy::RegularExpressions::RequireDefault - Always use the `/a` or `/aa` modifier with regular expressions.

# AFFILIATION

This policy has no affiliation

# DESCRIPTION

The `/a` modifier's purpose is to allow code that is to work mostly on ASCII data to not have to concern itself with Unicode.

This policy is inspired by [Perl::Critic::Policy::RegularExpressions::RequireExtendedFormatting](https://metacpan.org/pod/Perl::Critic::Policy::RegularExpressions::RequireExtendedFormatting) and many implementation details was lifted from this particular distribution.

# CONFIGURATION

This policy is not configurable at this time. Please see the TODO ["section"](#section).

# NOTES

# TODO

- Please see [the issue listing on GitHub](https://github.com/jonasbn/perl-critic-policy-regularexpressions-requiredefault/issues)

# SEE ALSO

- [Perl regular expression documentation: perlre](https://perldoc.perl.org/perlre.html)
- [Perl::Critic::Policy::RegularExpressions::RequireExtendedFormatting](https://metacpan.org/pod/Perl::Critic::Policy::RegularExpressions::RequireExtendedFormatting)

# MOTIVATION

The motivation for this Perl::Critic policy came from a [tweet](https://mobile.twitter.com/jmaslak/status/1008896883169751040) by [@joel](https://mobile.twitter.com/jmaslak)

    | Perl folk: Looking for a PR challenge task? Check for \d in regexes
    | that really should be [0-9] or should have the /a regex modifier.
    | Perl is multinational by default! #TPCiSLC

# AUTHOR

- jonasbn <jonasbn@cpan.org>

# ACKNOWLEDGEMENTS

- [Joelle Maslak (@joel)](https://twitter.com/jmaslak) / [JMASLAK](https://metacpan.org/author/JMASLAK)

# COPYRIGHT

Perl::Critic::Policy::RegularExpressions::RequireDefault is (C) by jonasbn 2018

Perl::Critic::Policy::RegularExpressions::RequireDefault is released under the Artistic License 2.0

Please see the LICENSE file included with the distribution of this module
