package Acme::PrettyCure::Girl::CureMuse;
use utf8;
use Any::Moose;

with qw/Acme::PrettyCure::Girl::Role Acme::PrettyCure::Girl::Role::Suite/;

sub human_name   {'調辺アコ'}
sub precure_name {'キュアミューズ'}
sub challenge { '爪弾くは女神の調べ! キュアミューズ!' }
sub age          {9}

no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
