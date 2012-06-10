package Acme::PrettyCure::Girl::CureHappy;
use utf8;
use Any::Moose;

with qw/Acme::PrettyCure::Girl::Role Acme::PrettyCure::Girl::Role::Smile/;

sub human_name   {'星空みゆき'}
sub precure_name {'キュアハッピー'}
sub age          {14}
sub challenge { 'キラキラ輝く未来の光! キュアハッピー!' }


no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
