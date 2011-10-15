package Acme::PrettyCure::Girl::CureRouge;
use utf8;
use Any::Moose;

with qw/Acme::PrettyCure::Girl::Role Acme::PrettyCure::Girl::Role::Five/;

sub human_name   {'夏木りん'}
sub precure_name {'キュアルージュ'}
sub age          {14}
sub challenge { '情熱の赤い炎、キュアルージュ!' }

no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
