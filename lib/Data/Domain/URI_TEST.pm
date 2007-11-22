package Data::Domain::URI_TEST;

use strict;
use warnings;
use Test::More;
use Data::Domain::URI ':all';


our $VERSION = '0.02';


use base qw(Test::CompanionClasses::Base);


use constant PLAN => 4 * keys %Data::Domain::URI::map;


sub run {
    my $self = shift;

    while (my ($shortcut, $rel_pkg) = each %Data::Domain::URI::map) {
        no strict 'refs';
        my $domain = *{ $shortcut }{CODE}->();
        isa_ok($domain, "Data::Domain::$rel_pkg");
        isa_ok($domain, 'Data::Domain::SemanticAdapter');
        isa_ok($domain->adaptee, "Data::Semantic::$rel_pkg");
        isa_ok($domain->adaptee, 'Data::Semantic::RegexpAdapter');
    }
}


1;


__END__



=head1 NAME

Data::Domain::URI_TEST - Test companion class

=head1 SYNOPSIS

    perl t/01_companion_classes.t

=head1 DESCRIPTION

This test companion class tests the shortcuts provided by L<Data::Domain::URI>
and that the objects they create, and their adaptees, are of the expected
types.

Data::Domain::URI_TEST inherits from L<Test::CompanionClasses::Base>.

The superclass L<Test::CompanionClasses::Base> defines these methods and
functions:

    new(), clear_package(), make_real_object(), package(), package_clear(),
    planned_test_count()

The superclass L<Class::Accessor::Complex> defines these methods and
functions:

    carp(), cluck(), croak(), flatten(), mk_abstract_accessors(),
    mk_array_accessors(), mk_boolean_accessors(),
    mk_class_array_accessors(), mk_class_hash_accessors(),
    mk_class_scalar_accessors(), mk_concat_accessors(),
    mk_forward_accessors(), mk_hash_accessors(), mk_integer_accessors(),
    mk_new(), mk_object_accessors(), mk_scalar_accessors(),
    mk_set_accessors(), mk_singleton()

The superclass L<Class::Accessor> defines these methods and functions:

    _carp(), _croak(), _mk_accessors(), accessor_name_for(),
    best_practice_accessor_name_for(), best_practice_mutator_name_for(),
    follow_best_practice(), get(), make_accessor(), make_ro_accessor(),
    make_wo_accessor(), mk_accessors(), mk_ro_accessors(),
    mk_wo_accessors(), mutator_name_for(), set()

The superclass L<Class::Accessor::Installer> defines these methods and
functions:

    install_accessor(), subname()

The superclass L<Data::Inherited> defines these methods and functions:

    every_hash(), every_list(), flush_every_cache_by_key()

=head1 METHODS

=over 4



=back

=head1 TAGS

If you talk about this module in blogs, on del.icio.us or anywhere else,
please use the C<datadomainuri> tag.

=head1 VERSION 
                   
This document describes version 0.02 of L<Data::Domain::URI_TEST>.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests to
C<<bug-data-domain-uri@rt.cpan.org>>, or through the web interface at
L<http://rt.cpan.org>.

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 AVAILABILITY

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit <http://www.perl.com/CPAN/> to find a CPAN
site near you. Or see <http://www.perl.com/CPAN/authors/id/M/MA/MARCEL/>.

=head1 AUTHOR

Marcel GrE<uuml>nauer, C<< <marcel@cpan.org> >>

=head1 COPYRIGHT AND LICENSE

Copyright 2007 by Marcel GrE<uuml>nauer

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.


=cut

