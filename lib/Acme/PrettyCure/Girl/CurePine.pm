package Acme::PrettyCure::Girl::CurePine;
use utf8;
use Any::Moose;

with qw/Acme::PrettyCure::Girl::Role Acme::PrettyCure::Girl::Role::Fresh/;

sub human_name   {'山吹祈里'}
sub precure_name {'キュアパイン'}
sub age          {14}
sub challenge { qw(イエローハートは祈りの印 とれたてフレッシュ、キュアパイン!) }


no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
