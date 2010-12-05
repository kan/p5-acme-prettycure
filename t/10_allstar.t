use strict;
use warnings;
use utf8;
use Test::More;

use Acme::PrettyCure;

my @members = Acme::PrettyCure->members('AllStar');

is scalar(@members), 3, 'pretty cure allstar';

done_testing;

