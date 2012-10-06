package Acme::PrettyCure::Girl::CureLemonade;
use utf8;
use Any::Moose;

with qw/Acme::PrettyCure::Girl::Role Acme::PrettyCure::Girl::Role::Five/;

sub human_name   {'春日野うらら'}
sub precure_name {'キュアレモネード'}
sub age          {13}
sub challenge { 'はじけるレモンの香り、キュアレモネード!' }
sub color { 220 }

no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
