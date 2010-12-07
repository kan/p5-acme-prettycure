use strict;
use warnings;
use utf8;
use Test::More;

use Acme::PrettyCure;

my ($love, $miki, $bukky, $setsu) = Acme::PrettyCure->girls('Fresh');

isa_ok $love,  'Acme::PrettyCure::Girl::CurePeach';
isa_ok $miki,  'Acme::PrettyCure::Girl::CureBerry';
isa_ok $bukky, 'Acme::PrettyCure::Girl::CurePine';
isa_ok $setsu, 'Acme::PrettyCure::Girl::CurePassion';

done_testing;

