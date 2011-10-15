
package Acme::PrettyCure::Girl::CureBeat;
use utf8;
use Any::Moose;

with qw/Acme::PrettyCure::Girl::Role Acme::PrettyCure::Girl::Role::Suite/;

use List::MoreUtils qw/any/;

sub fairy_name   {'セイレーン'}
sub human_name   {'黒川エレン'}
sub precure_name {'キュアビート'}
sub challenge { '爪弾くは魂の調べ! キュアビート!' }

no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
