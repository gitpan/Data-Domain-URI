package Data::Domain::URI;

use strict;
use warnings;
use Data::Domain::SemanticAdapter;


our $VERSION = '0.02';


use base 'Exporter';


our %map = (
    URI_Fax  => 'URI::fax',
    URI_File => 'URI::file',
    URI_FTP  => 'URI::ftp',
    URI_HTTP => 'URI::http',
);


our %EXPORT_TAGS = (
    util => [ keys %map ],
);


our @EXPORT_OK = @{ $EXPORT_TAGS{all} = [ map { @$_ } values %EXPORT_TAGS ] };


Data::Domain::SemanticAdapter::install_shortcuts(%map);


1;


__END__



=head1 NAME

Data::Domain::URI - Data domain classes for URIs

=head1 SYNOPSIS

    Data::Domain::URI->new;

=head1 DESCRIPTION

The classes in this distribution are data domain classes for various URI
types.

=over 4

=item fax

See L<Data::Domain::URI::fax>.

=item file

See L<Data::Domain::URI::file>.

=item ftp

See L<Data::Domain::URI::ftp>.

=item http

See L<Data::Domain::URI::http>.

=back

Besides defining the methods described below, this class also exports, on
request, these functions:

=over 4

=item URI_Fax

A shortcut for creating a L<Data::Domain::URI::fax> object. Arguments are
passed on to the object's constructor.

=item URI_File

A shortcut for creating a L<Data::Domain::URI::file> object. Arguments are
passed on to the object's constructor.

=item URI_FTP

A shortcut for creating a L<Data::Domain::URI::ftp> object. Arguments are
passed on to the object's constructor.

=item URI_HTTP

A shortcut for creating a L<Data::Domain::URI::http> object. Arguments are
passed on to the object's constructor.

=back

By using the C<:all> tag, you can import all of them.

Data::Domain::URI inherits from L<Exporter>.

The superclass L<Exporter> defines these methods and functions:

    as_heavy(), export(), export_fail(), export_ok_tags(), export_tags(),
    export_to_level(), import(), require_version()

=head1 METHODS

=over 4



=back

=head1 TODO

Add the other URI classes supported by L<Regexp::Common::URI> as soon as they
are available via L<Data::Semantic::URI>.

=head1 TAGS

If you talk about this module in blogs, on del.icio.us or anywhere else,
please use the C<datadomainuri> tag.

=head1 VERSION 
                   
This document describes version 0.02 of L<Data::Domain::URI>.

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

