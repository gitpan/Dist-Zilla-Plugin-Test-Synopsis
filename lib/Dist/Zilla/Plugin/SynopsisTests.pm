use 5.008;
use strict;
use warnings;

package Dist::Zilla::Plugin::SynopsisTests;
# ABSTRACT: Release tests for synopses
our $VERSION = '2.000003'; # VERSION
use Moose;
extends 'Dist::Zilla::Plugin::Test::Synopsis';


before register_component => sub {
    warn '!!! [SynopsisTests] is deprecated and will be removed in a future release; replace it with [Test::Synopsis]';
};

__PACKAGE__->meta->make_immutable;
no Moose;
1;

__END__

=pod

=encoding utf-8

=head1 NAME

Dist::Zilla::Plugin::SynopsisTests - Release tests for synopses

=head1 VERSION

version 2.000003

=head1 SYNOPSIS

In C<dist.ini>:

    [Test::Synopsis]

=for test_synopsis 1;
__END__

=head1 AVAILABILITY

The project homepage is L<http://metacpan.org/release/Dist-Zilla-Plugin-Test-Synopsis/>.

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit L<http://www.perl.com/CPAN/> to find a CPAN
site near you, or see L<https://metacpan.org/module/Dist::Zilla::Plugin::Test::Synopsis/>.

=head1 SOURCE

The development version is on github at L<http://github.com/doherty/Dist-Zilla-Plugin-Test-Synopsis>
and may be cloned from L<git://github.com/doherty/Dist-Zilla-Plugin-Test-Synopsis.git>

=head1 BUGS AND LIMITATIONS

You can make new bug reports, and view existing ones, through the
web interface at L<https://github.com/doherty/Dist-Zilla-Plugin-Test-Synopsis/issues>.

=head1 AUTHORS

=over 4

=item *

Marcel Grünauer <marcel@cpan.org>

=item *

Mike Doherty <doherty@cpan.org>

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Mike Doherty.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
