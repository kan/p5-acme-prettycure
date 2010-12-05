use strict;
use warnings;
use utf8;
use Test::More;
use Test::Exception;

use Acme::PrettyCure::CureBlack;
use Acme::PrettyCure::CureWhite;

my $nagi = Acme::PrettyCure::CureBlack->new;
my $hono = Acme::PrettyCure::CureWhite->new;

throws_ok { $nagi->transform } qr/メポ/, '初代は単独変身不可能';
throws_ok { $nagi->transform($nagi) } qr/メポ/, 'ほのか以外とも変身は出来ない';

throws_ok { $hono->transform } qr/ミポ/, '初代は単独変身不可能';
throws_ok { $hono->transform($hono) } qr/ミポ/, 'なぎさ以外とも変身は出来ない';

is $nagi->name, '美墨なぎさ';
is $hono->name, '雪城ほのか';

$nagi->transform($hono);

is $nagi->name, 'キュアブラック';
is $hono->name, 'キュアホワイト';

done_testing;

