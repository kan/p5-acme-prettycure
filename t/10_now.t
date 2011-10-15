use strict;
use warnings;
use utf8;
use Test::More;

use Acme::PrettyCure;

my @now = Acme::PrettyCure->now;
my @suite = Acme::PrettyCure->girls('Suite');

is_deeply \@now, \@suite, 'now "Suite Precure"';

done_testing;

