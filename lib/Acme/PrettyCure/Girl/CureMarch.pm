package Acme::PrettyCure::Girl::CureMarch;
use utf8;
use Any::Moose;

with qw/Acme::PrettyCure::Girl::Role Acme::PrettyCure::Girl::Role::Smile/;

sub human_name   {'緑川なお'}
sub precure_name {'キュアマーチ'}
sub age          {14}
sub challenge { '勇気リンリン直球勝負! キュアマーチ!' }


no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
