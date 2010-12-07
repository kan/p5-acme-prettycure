use strict;
use warnings;
use utf8;
use Test::More;

use Acme::PrettyCure;

my ($nozomi, $rin, $urara, $komachi, $karen) = Acme::PrettyCure->girls('Five');

isa_ok $nozomi,  'Acme::PrettyCure::Girl::CureDream';
isa_ok $rin,     'Acme::PrettyCure::Girl::CureRouge';
isa_ok $urara,   'Acme::PrettyCure::Girl::CureLemonade';
isa_ok $komachi, 'Acme::PrettyCure::Girl::CureMint';
isa_ok $karen,   'Acme::PrettyCure::Girl::CureAqua';

done_testing;

