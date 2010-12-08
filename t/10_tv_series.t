use strict;
use warnings;
use Test::More;

use Acme::PrettyCure;

my @all_series = sort Acme::PrettyCure->tv_series;
is_deeply(\@all_series, [qw/
    First Five FiveGoGo Fresh
    HeartCatch MaxHeart SplashStar
/]);

done_testing;
