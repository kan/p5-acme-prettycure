package Acme::PrettyCure;
use strict;
use warnings;
our $VERSION = '0.01';

1;
__END__

=head1 NAME

Acme::PrettyCure - All about Japanese battle heroine "Pretty Cure"

=head1 SYNOPSIS

  use Acme::PrettyCure;

  my $precure = Acme::PrettyCure->new;

  # retrieve member on their teams
  my @allstar =  $precure->members('AllStar');    # retrieve all
  my @allstar1 = $precure->members('AllStarDX1'); # retrieve first .. fresh
  my @allstar2 = $precure->members('AllStarDX2'); # retrieve first .. heart_catch
  my @first    = $precure->members;
  my @mh       = $precure->members('MaxHeart');
  my @ss       = $precure->members('SplashStar');
  my @five     = $precure->members('Five');

  my $hc = $precure->now; # retrieve active team members

=head1 DESCRIPTION

"Acme::PrettyCure" is most famous Japanese battle hiroine.

http://en.wikipedia.org/wiki/Pretty_Cure

=head1 METHODS

=head2 new

  my $precure = Acme::PrettyCure->new;

Creates and returns a new Acme::PrettyCure object.

=head2 members

  my @precures = $precure->members('AllStar');

returns Acme::PrettyCure::Girl based objects.

=head1 AUTHOR

Kan Fushihara E<lt>kan.fushihara at gmail.comE<gt>

=head1 SEE ALSO

C<Acme::MorningMusume>, C<Acme::AKB48>

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
