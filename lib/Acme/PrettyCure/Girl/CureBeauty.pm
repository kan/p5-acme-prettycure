package Acme::PrettyCure::Girl::CureBeauty;
use utf8;
use Any::Moose;

with qw/Acme::PrettyCure::Girl::Role Acme::PrettyCure::Girl::Role::Smile/;

sub human_name   {'青木れいか'}
sub precure_name {'キュアビューティ'}
sub age          {14}
sub challenge { 'しんしんと降りつもる清き心! キュアビューティ!' }
sub color { 27 }
sub image_url { 'http://www.toei-anim.co.jp/tv/precure/images/character/c5_1.jpg' }


no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
