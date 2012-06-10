package Acme::PrettyCure;
use Any::Moose;
our $VERSION = '0.05';

use UNIVERSAL::require;

my %SERIES = (
    First      => [qw/ CureBlack CureWhite /],
    MaxHeart   => [qw/ CureBlackMH CureWhiteMH ShinyLuminous /],
    SplashStar => [qw/ CureBloom CureEgret /],
    Five       => [qw/ CureDream CureRouge CureLemonade CureMint CureAqua /],
    Fresh      => [qw/ CurePeach CureBerry CurePine CurePassion /],
    HeartCatch => [qw/ CureBlossom CureMarine CureSunshine CureMoonlight /],
    Suite      => [qw/ CureMelody CureRhythm CureBeat CureMuse /],
    Smile      => [qw/ CureHappy CureSunny CurePeace CureMarch CureBeauty /],
);

$SERIES{FiveGoGo} = [ @{ $SERIES{Five} },  'MilkyRose' ];

$SERIES{AllStar} = [
    @{ $SERIES{MaxHeart} }, @{ $SERIES{SplashStar} }, @{ $SERIES{FiveGoGo} },
    @{ $SERIES{Fresh} }, @{ $SERIES{HeartCatch} }, @{ $SERIES{Suite} },
];
$SERIES{AllStarDX1} = [
    @{ $SERIES{MaxHeart} }, @{ $SERIES{SplashStar} }, @{ $SERIES{FiveGoGo} },
    qw/ CurePeach CureBerry CurePine /
];
$SERIES{AllStarDX2} = [
    @{ $SERIES{MaxHeart} }, @{ $SERIES{SplashStar} }, @{ $SERIES{FiveGoGo} },
    @{ $SERIES{Fresh} },
    qw/ CureBlossom CureMarine /
];
$SERIES{AllStarDX3} = [
    @{ $SERIES{MaxHeart} }, @{ $SERIES{SplashStar} }, @{ $SERIES{FiveGoGo} },
    @{ $SERIES{Fresh} }, @{ $SERIES{HeartCatch} },
    qw/ CureMelody CureRhythm /
];
$SERIES{AllStarNewStage} = [
    @{ $SERIES{MaxHeart} }, @{ $SERIES{SplashStar} }, @{ $SERIES{FiveGoGo} },
    @{ $SERIES{Fresh} }, @{ $SERIES{HeartCatch} }, @{ $SERIES{Suite} },
    @{ $SERIES{Smile} },
    qw/ CureEcho /
];



sub girls {
    $_[0]->_get(@{ 
        $SERIES{$_[1] || 'First'} or die q{can't find $team at pretty cure}
    });
}

sub members { girls(@_) }

sub all_series{ keys %SERIES }
sub tv_series{ grep { !/^All/ } keys %SERIES }

sub now { shift->girls('Smile') }

sub _get {
    my ($class, @names) = @_;

    my @girls;
    for my $name (@names) {
        my $module = "Acme::PrettyCure::Girl::$name";
        $module->require or die $@;

        push @girls, $module->new;
    }

    return @girls;
}


no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
__END__

=head1 NAME

Acme::PrettyCure - All about Japanese battle heroine "Pretty Cure"

=head1 SYNOPSIS

  use Acme::PrettyCure;

  # retrieve member on their teams
  my @allstar =  Acme::PrettyCure->girls('AllStar');    # retrieve all
  my @allstar1 = Acme::PrettyCure->girls('AllStarDX1'); # retrieve first .. fresh
  my @allstar2 = Acme::PrettyCure->girls('AllStarDX2'); # retrieve first .. heart_catch
  my @first    = Acme::PrettyCure->girls;
  my @mh       = Acme::PrettyCure->girls('MaxHeart');
  my @ss       = Acme::PrettyCure->girls('SplashStar');
  my @five     = Acme::PrettyCure->girls('Five');

  my $hc = Acme::PrettyCure->now; # retrieve active team members

=head1 DESCRIPTION

"Acme::PrettyCure" is most famous Japanese battle hiroine.

http://en.wikipedia.org/wiki/Pretty_Cure

=head1 METHODS

=head2 members

  my @precures = Acme::PrettyCure->girls('AllStar');

returns C<Acme::PrettyCure::Girl::Role> act objects.

=head2 members

  alias of girls.

=head2 tv_series

  my @tv_series_names = Acme::PrettyCure->tv_series;

=head2 all_series

tv series with all movies.

  my @all_series_names = Acme::PrettyCure->all_series;

=head2 now

  returns team girls when now on air.

=head1 AUTHOR

Kan Fushihara E<lt>kan.fushihara at gmail.comE<gt>
Kazuhiro Osawa E<lt>ko@yappo.ne.jp<gt>

=head1 SEE ALSO

C<Acme::MorningMusume>, C<Acme::AKB48>

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
