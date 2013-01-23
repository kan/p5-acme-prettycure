package Acme::PrettyCure::Girl::CureRosetta;
use utf8;
use Moo;

with qw/Acme::PrettyCure::Girl::Role Acme::PrettyCure::Girl::Role::DokiDoki/;

sub human_name   {'四葉ありす'}
sub precure_name {'キュアロゼッタ'}
sub age          {14}
sub challenge { 'ひだまりポカポカ!キュアロゼッタ' }
sub color { 220 }
sub image_url { 'http://www.toei-anim.co.jp/tv/dd_precure/img/character/chara_img02_03.png' }

1;
