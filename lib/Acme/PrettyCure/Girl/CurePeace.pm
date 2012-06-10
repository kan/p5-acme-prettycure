package Acme::PrettyCure::Girl::CurePeace;
use utf8;
use Any::Moose;

with qw/Acme::PrettyCure::Girl::Role Acme::PrettyCure::Girl::Role::Smile/;

sub human_name   {'黄瀬やよい'}
sub precure_name {'キュアピース'}
sub age          {14}
sub challenge { 'ピカピカぴかりんじゃんけんぽん♪ キュアピース!' }


no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
