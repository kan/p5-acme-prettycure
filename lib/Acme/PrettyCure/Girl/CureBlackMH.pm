package Acme::PrettyCure::Girl::CureBlackMH;
use Any::Moose;

extends 'Acme::PrettyCure::Girl::CureBlack';

override 'age' => sub { 15 };
override 'image_url' => sub { 'http://www.toei-anim.co.jp/tv/precure_MH/image/nagisa/p01.gif' };

1;
