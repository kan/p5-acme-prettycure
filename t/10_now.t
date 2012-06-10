use strict;
use warnings;
use utf8;
use Test::More;

use Acme::PrettyCure;

my @now = Acme::PrettyCure->now;
my @smile = Acme::PrettyCure->girls('Smile');

is_deeply \@now, \@smile, 'now "Smile Precure"';

done_testing;

