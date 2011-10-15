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
    qw(
       光の使者、キュアブラック! 
       光の使者、キュアホワイト! 
       ふたりはプリキュア! 
       闇の力の僕たちよ! 
       とっととおうちに帰りなさい!
    )
}

before 'transform' => sub {
    my ($self, $buddy) = @_;

    die "ほのかがいないと変身できないメポ!" unless ref($buddy) =~ /CureWhite/;
};

no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
