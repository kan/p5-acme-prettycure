use strict;
use warnings;
use utf8;
use Test::More;

use Acme::PrettyCure;

my @members = Acme::PrettyCure->members('First');

is scalar(@members), 2, 'pretty cure';

done_testing;

