package Acme::PrettyCure::Girl::CureBlack;
use utf8;
use Any::Moose;

with qw/Acme::PrettyCure::Girl::Role Acme::PrettyCure::Girl::Role::Futari/;

sub human_name   {'美墨なぎさ'}
sub precure_name {'キュアブラック'}
sub birthday     { Time::Piece->( '1990/10/10', '%Y/%m/%d' ) }
sub age          {14}
sub blood_type   {'O'}
sub challenge {
    "\e[38;5;255m\e[48;5;232m光の使者、キュアブラック!\e[0m",
    "\e[38;5;232m\e[48;5;255m光の使者、キュアホワイト!\e[0m",
    "\e[38;5;201mふたりはプリキュア!\e[0m",
    "\e[38;5;232m\e[48;5;255m闇の力の僕たちよ!\e[0m",
    "\e[38;5;255m\e[48;5;232mとっととおうちに帰りなさい!\e[0m",
}

before 'transform' => sub {
    my ($self, $buddy) = @_;

    die "ほのかがいないと変身できないメポ!" unless ref($buddy) =~ /CureWhite/;
};

no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
