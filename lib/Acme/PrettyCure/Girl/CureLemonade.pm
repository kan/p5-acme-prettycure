package Acme::PrettyCure::Girl::CureLemonade;
use utf8;
use Any::Moose;

with 'Acme::PrettyCure::Girl::Role';

sub human_name   {'春日野うらら'}
sub precure_name {'キュアレモネード'}
sub age          {13}
sub challenge { 'はじけるレモンの香り、キュアレモネード!' }

no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
