package Acme::PrettyCure::Girl::CureBlackMH;
use Any::Moose;

extends 'Acme::PrettyCure::Girl::CureBlack';

override 'age' => sub { 15 };

1;
