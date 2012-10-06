package Acme::PrettyCure::Girl::CurePeach;
use utf8;
use Any::Moose;

with qw/Acme::PrettyCure::Girl::Role Acme::PrettyCure::Girl::Role::Fresh/;

sub human_name   {'桃園ラブ'}
sub precure_name {'キュアピーチ'}
sub age          {14}
sub challenge { qw(ピンクのハートは愛ある印 もぎたてフレッシュ、キュアピーチ!) }
sub color { 198 }


no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
