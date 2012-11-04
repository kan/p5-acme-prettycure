package Acme::PrettyCure::Girl::CureWhiteMH;
use Any::Moose;

extends 'Acme::PrettyCure::Girl::CureWhite';

override 'age' => sub { 15 };
override 'image_url' => sub { 'http://www.toei-anim.co.jp/tv/precure_MH/image/honoka/p01.gif' };

1;
