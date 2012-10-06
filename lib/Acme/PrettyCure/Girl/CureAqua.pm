package Acme::PrettyCure::Girl::CureAqua;
use utf8;
use Any::Moose;

with qw/Acme::PrettyCure::Girl::Role Acme::PrettyCure::Girl::Role::Five/;

sub human_name   {'水無月かれん'}
sub precure_name {'キュアアクア'}
sub age          {15}
sub challenge { '知性の青き泉、キュアアクア!' }
sub color { 20 }

no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
