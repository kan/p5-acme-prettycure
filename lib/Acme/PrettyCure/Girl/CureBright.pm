package Acme::PrettyCure::Girl::CureBright;
use utf8;
use Any::Moose;

extends 'Acme::PrettyCure::Girl::CureBloom';

override 'precure_name' => sub {'キュアブライト'};
override 'challenge' => sub {
    "\e[38;5;227m天空に満ちる月、キュアブライト!\e[0m",
    "\e[38;5;195m大地に薫る風、キュアウィンディ!\e[0m",
    "\e[38;5;201mふたりはプリキュア!\e[0m",
    "\e[38;5;195m聖なる泉を汚す者よ!\e[0m",
    "\e[38;5;227mアコギな真似はおやめなさい!\e[0m",
};

no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
