package Acme::PrettyCure::Girl::CureMint;
use utf8;
use Any::Moose;

with qw/Acme::PrettyCure::Girl::Role Acme::PrettyCure::Girl::Role::Five/;

sub human_name   {'秋元こまち'}
sub precure_name {'キュアミント'}
sub age          {15}
sub challenge { 'やすらぎの緑の大地、キュアミント!' }

no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
