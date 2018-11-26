# NAME

Perl::Critic::Policy::RegularExpressions::RequireDefault - Always use the `/a` or `/aa` modifier with regular expressions.

# VERSION

This documentation describes version 0.01

# AFFILIATION

This policy has no affiliation

# DESCRIPTION

The `/a` and `/aa` modifiers standing for ASCII-restrict or ASCII-safe, provides protection for applications that do not need to be exposed to all of Unicode and possible security issues with Unicode.

`/a` causes the sequences `\d`, `\s`, `\w`, and the Posix character classes to match only in the ASCII range. Meaning:

- `\d` means the digits `0` to `9`
- `\s` means the five characters `[ \f\n\r\t]`, and starting in Perl v5.18, also the vertical tab
- `\w` means the 63 characters `[A-Za-z0-9_]` and all the Posix classes such as `[[:print:]]` match only the appropriate ASCII-range characters

Do note that the `/a` and `/aa` modifiers require Perl 5.14, so by using the recommended modifiers you indirectly introduct a requirement for Perl 5.14.

This policy is inspired by [Perl::Critic::Policy::RegularExpressions::RequireExtendedFormatting](https://metacpan.org/pod/Perl::Critic::Policy::RegularExpressions::RequireExtendedFormatting) and many implementation details was lifted from this particular distribution.

# CONFIGURATION AND ENVIRONMENT

This policy is not configurable at this time. Please see the TODO ["section"](#section).

# INCOMPATIBILITIES

This distribution holds no known incompatibilities at this time, please see ["DEPENDENCIES AND REQUIREMENTS"](#dependencies-and-requirements) for details on version requirements.

# BUGS AND LIMITATIONS

This distribution holds no known incompatibilities at this time, please refer to the [the issue listing on GitHub](https://github.com/jonasbn/perl-critic-policy-regularexpressions-requiredefault/issues) for more up to date information.

# BUG REPORTING

Please report bugs via [GitHub](https://github.com/jonasbn/perl-critic-policy-regularexpressions-requiredefault/issues).

# TEST AND QUALITY

This distribution aims to adhere to the Perl::Critic::Policy standards and Perl best practices and recommendations.

# DEPENDENCIES AND REQUIREMENTS

This distribution requires:

- Perl 5.8
- Carp
- Readonly
- Perl::Critic::Policy
- Perl::Critic::Utils

Please see the listing in the file: `cpanfile`, included with the distribution for a complete listing and description for configuration, test and development.

# TODO

- Please see [the issue listing on GitHub](https://github.com/jonasbn/perl-critic-policy-regularexpressions-requiredefault/issues)

# SEE ALSO

- [Perl regular expression documentation: perlre](https://perldoc.perl.org/perlre.html)
- [Perl::Critic::Policy::RegularExpressions::RequireExtendedFormatting](https://metacpan.org/pod/Perl::Critic::Policy::RegularExpressions::RequireExtendedFormatting)
- [Unicode Security Guide](http://websec.github.io/unicode-security-guide/)

# MOTIVATION

The motivation for this Perl::Critic policy came from a [tweet](https://mobile.twitter.com/jmaslak/status/1008896883169751040) by [@joel](https://mobile.twitter.com/jmaslak)

    | Perl folk: Looking for a PR challenge task? Check for \d in regexes
    | that really should be [0-9] or should have the /a regex modifier.
    | Perl is multinational by default! #TPCiSLC

# AUTHOR

- jonasbn <jonasbn@cpan.org>

# ACKNOWLEDGEMENTS

- [Joelle Maslak (@joel)](https://twitter.com/jmaslak) / [JMASLAK](https://metacpan.org/author/JMASLAK)
- [https://github.com/Grinnz|@Grinnz](https://github.com/Grinnz|@Grinnz) for information on Pragma and requirement for Perl 5.14, when using the modifiers handled and mentioned by this policy

# LICENSE AND COPYRIGHT

Perl::Critic::Policy::RegularExpressions::RequireDefault is (C) by jonasbn 2018

Perl::Critic::Policy::RegularExpressions::RequireDefault is released under the Artistic License 2.0

Please see the LICENSE file included with the distribution of this module
