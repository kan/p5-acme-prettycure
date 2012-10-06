package Acme::PrettyCure::Girl::CureEgret;
use utf8;
use Any::Moose;

with qw/Acme::PrettyCure::Girl::Role Acme::PrettyCure::Girl::Role::Futari/;

sub human_name   {'美翔舞'}
sub precure_name {'キュアイーグレット'}
sub birthday     { Time::Piece->( '1992/11/20', '%Y/%m/%d' ) }
sub age          {14}
sub blood_type   {'AB'}
sub challenge {
    "\e[38;5;198m輝く金の花、キュアブルーム!\e[0m",
    "\e[38;5;250mきらめく銀の翼、キュアイーグレット!\e[0m",
    "\e[38;5;201mふたりはプリキュア!\e[0m",
    "\e[38;5;250m聖なる泉を汚す者よ!\e[0m",
    "\e[38;5;198mアコギな真似はおやめなさい!\e[0m",
}

before 'transform' => sub {
    my ($self, $buddy) = @_;

    die "咲がいないと変身できないチョピ!" unless ref($buddy) =~ /Cure(Bloom|Bright)/;
};

use Acme::PrettyCure::Girl::CureWindy;
sub powerup { Acme::PrettyCure::Girl::CureWindy->new(is_precure => shift->is_precure) }

no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
