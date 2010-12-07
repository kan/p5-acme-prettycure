use strict;
use warnings;
use utf8;
use Test::More;

use Acme::PrettyCure;

my ( $tsubomi, $erika, $itsuki, $yuri ) = Acme::PrettyCure->now;

isa_ok $tsubomi, 'Acme::PrettyCure::Girl::CureBlossom';
isa_ok $erika,   'Acme::PrettyCure::Girl::CureMarine';
isa_ok $itsuki,  'Acme::PrettyCure::Girl::CureSunshine';
isa_ok $yuri,    'Acme::PrettyCure::Girl::CureMoonlight';

done_testing;

