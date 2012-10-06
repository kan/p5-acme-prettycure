package Acme::PrettyCure::Girl::CureBloom;
use utf8;
use Any::Moose;

with qw/Acme::PrettyCure::Girl::Role Acme::PrettyCure::Girl::Role::Futari/;

sub human_name   {'日向咲'}
sub precure_name {'キュアブルーム'}
sub birthday     { Time::Piece->( '1992/08/07', '%Y/%m/%d' ) }
sub age          {14}
sub blood_type   {'O'}
sub challenge {
    "\e[38;5;198m輝く金の花、キュアブルーム!\e[0m",
    "\e[38;5;250mきらめく銀の翼、キュアイーグレット!\e[0m",
    "\e[38;5;201mふたりはプリキュア!\e[0m",
    "\e[38;5;250m聖なる泉を汚す者よ!\e[0m",
    "\e[38;5;198mアコギな真似はおやめなさい!\e[0m",
}

before 'transform' => sub {
    my ($self, $buddy) = @_;

    die "舞がいないと変身できないラピ!" unless ref($buddy) =~ /Cure(Egret|Windy)/;
};

use Acme::PrettyCure::Girl::CureBright;
sub powerup { Acme::PrettyCure::Girl::CureBright->new(is_precure => shift->is_precure) }

no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
