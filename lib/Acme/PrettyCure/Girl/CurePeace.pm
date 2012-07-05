package Acme::PrettyCure::Girl::CurePeace;
use utf8;
use Any::Moose;

with qw/Acme::PrettyCure::Girl::Role Acme::PrettyCure::Girl::Role::Smile/;

sub human_name   {'黄瀬やよい'}
sub precure_name {'キュアピース'}
sub age          {14}
sub challenge { 'ピカピカぴかりんじゃんけんぽん♪ キュアピース!' }
sub challenge_with_jankenpon {
    my $jankenpon = ( qw/グー チョキ パー/ )[ rand(3) ];
    my $words     =  $_[0]->challenge();
    $words =~ s/(?=♪)/（$jankenpon）/;
    return $words;
}


no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
