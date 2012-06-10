package Acme::PrettyCure::Girl::CureEcho;
use utf8;
use Any::Moose;
use Time::Piece;

with 'Acme::PrettyCure::Girl::Role';

sub human_name   {'坂上あゆみ'}
sub precure_name {'キュアエコー'}
sub challenge { "想いよ届け! キュアエコー!" }


no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
