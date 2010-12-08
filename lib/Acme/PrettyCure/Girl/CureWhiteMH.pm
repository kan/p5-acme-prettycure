package Acme::PrettyCure::Girl::CureWhiteMH;
use Any::Moose;

extends 'Acme::PrettyCure::Girl::CureWhite';

override 'age' => sub { 15 };

1;
