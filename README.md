# NAME

Perl::Critic::Policy::RegularExpressions::RequireDefault - Always use the `/a` or `/aa` modifier with regular expressions.

# VERSION

This documentation describes version 0.01

# AFFILIATION

This policy has no affiliation

# DESCRIPTION

The `/a` modifier's purpose is to allow code that is to work mostly on ASCII data to not have to concern itself with Unicode.

This policy is inspired by [Perl::Critic::Policy::RegularExpressions::RequireExtendedFormatting](https://metacpan.org/pod/Perl::Critic::Policy::RegularExpressions::RequireExtendedFormatting) and many implementation details was lifted from this particular distribution.

# CONFIGURATION AND ENVIRONMENT

This policy is not configurable at this time. Please see the TODO ["section"](#section).

# INCOMPATIBILITIES

This ditribution holds no known incompatibilities at this time, please see ["DEPENDENCIES AND REQUIREMENTS"](#dependencies-and-requirements) for details on version requirements.

# BUGS AND LIMITATIONS

This ditribution holds no known incompatibilities at this time, please refer to the [the issue listing on GitHub](https://github.com/jonasbn/perl-critic-policy-regularexpressions-requiredefault/issues) for more up to date information.

# BUG REPORTING

Please report bugs via [GitHub](https://github.com/jonasbn/perl-critic-policy-regularexpressions-requiredefault/issues).

# TEST AND QUALITY

This distribution aims to adhere to the Perl::Critic::Policy standards and Perl best practices and recommendations.

# DEPENDENCIES AND REQUIREMENTS

This distribution requires:

- Perl 5.8
=item \* Carp
=item \* Readonly
=item \* Perl::Critic::Policy
=item \* Perl::Critic::Utils

Please see the lising in the file: `cpanfile`, included with the distribution for a complete listing and description for configuration, test and development.

    ---------------------------- ------ ------ ------ ------ ------ ------ ------
    File                           stmt   bran   cond    sub    pod   time  total
    ---------------------------- ------ ------ ------ ------ ------ ------ ------
    ...essions/RequireDefault.pm   95.8   75.0  100.0   90.0  100.0  100.0   93.3
    Total                          95.8   75.0  100.0   90.0  100.0  100.0   93.3
    ---------------------------- ------ ------ ------ ------ ------ ------ ------

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

# LICENSE AND COPYRIGHT

Perl::Critic::Policy::RegularExpressions::RequireDefault is (C) by jonasbn 2018

Perl::Critic::Policy::RegularExpressions::RequireDefault is released under the Artistic License 2.0

Please see the LICENSE file included with the distribution of this module
