package Acme::PrettyCure::Girl::CureDiamond;
use utf8;
use Moo;

with qw/Acme::PrettyCure::Girl::Role Acme::PrettyCure::Girl::Role::DokiDoki/;

sub human_name   {'菱川六花'}
sub precure_name {'キュアダイヤモンド'}
sub age          {14}
sub challenge { '英知の光!キュアダイヤモンド' }
sub color { 45 }
sub image_url { 'http://www.toei-anim.co.jp/tv/dd_precure/img/character/chara_img02_02.png' }

1;
