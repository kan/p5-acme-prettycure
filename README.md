# NAME

Acme::PrettyCure - All about Japanese battle heroine "Pretty Cure"

# SYNOPSIS

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

# DESCRIPTION

"Acme::PrettyCure" is most famous Japanese battle heroine.

http://en.wikipedia.org/wiki/Pretty_Cure

# METHODS

## members

    my @precures = Acme::PrettyCure->girls('AllStar');

returns `Acme::PrettyCure::Girl::Role` act objects.

## members

    alias of girls.

## tv\_series

    my @tv_series_names = Acme::PrettyCure->tv_series;

## all\_series

tv series with all movies.

    my @all_series_names = Acme::PrettyCure->all_series;

## now

    returns team girls when now on air.

# AUTHOR

Kan Fushihara <kan.fushihara at gmail.com>
Kazuhiro Osawa <ko@yappo.ne.jp<gt>
Makamaka Hannyaharamitu, <makamaka\[at\]cpan.org>

# SEE ALSO

`Acme::MorningMusume`, `Acme::AKB48`

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
