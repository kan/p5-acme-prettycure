package Acme::PrettyCure::Girl::CureRouge;
use utf8;
use Any::Moose;

with qw/Acme::PrettyCure::Girl::Role Acme::PrettyCure::Girl::Role::Five/;

sub human_name   {'夏木りん'}
sub precure_name {'キュアルージュ'}
sub age          {14}
sub challenge { '情熱の赤い炎、キュアルージュ!' }
sub color { 160 }
sub image_url { 'http://www.toei-anim.co.jp/tv/yes_precure5/character/img/body_rouge.jpg' }

no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
