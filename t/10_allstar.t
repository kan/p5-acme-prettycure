use strict;
use warnings;
use utf8;
use Test::More;

use Acme::PrettyCure;

my @girls = Acme::PrettyCure->girls('AllStar');

is scalar(@girls), 19, 'pretty cure allstar';

my @dx1 = Acme::PrettyCure->girls('AllStarDX1');

is scalar(@dx1), 14, 'pretty cure allstar_dx1';

my @dx2 = Acme::PrettyCure->girls('AllStarDX2');

is scalar(@dx2), 17, 'pretty cure allstar_dx2';

done_testing;

