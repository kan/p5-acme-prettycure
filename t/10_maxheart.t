use strict;
use warnings;
use utf8;
use Test::More;

use Acme::PrettyCure;

my @members = Acme::PrettyCure->members('MaxHeart');

is scalar(@members), 3, 'pretty cure maxheart';

done_testing;

