package Acme::PrettyCure::Girl::CureDream;
use utf8;
use Any::Moose;

with qw/Acme::PrettyCure::Girl::Role Acme::PrettyCure::Girl::Role::Five/;

sub human_name   {'夢原のぞみ'}
sub precure_name {'キュアドリーム'}
sub age          {14}
sub challenge { '大いなる希望の力、キュアドリーム!' }


no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
