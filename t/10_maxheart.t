use strict;
use warnings;
use utf8;
use Test::More;

use Acme::PrettyCure;

my ($nagi, $hono, $hikari) = Acme::PrettyCure->girls('MaxHeart');

isa_ok $nagi,   'Acme::PrettyCure::Girl::CureBlack';
isa_ok $hono,   'Acme::PrettyCure::Girl::CureWhite';
isa_ok $hikari, 'Acme::PrettyCure::Girl::ShinyLuminous';

done_testing;

