use strict;
use warnings;
use utf8;
use Test::More;

=pod
use Acme::PrettyCure::CureBlack;
use Acme::PrettyCure::CureWhite;

my $nagi = Acme::PrettyCure::CureBlack->new;
my $hono = Acme::PrettyCure::CureWhite->new;

is $nagi->name, '美墨なぎさ', 'name of human';

$nagi->transform($hono);

is $nagi->name, 'キュアブラック', 'name of precure';
=cut

use Acme::PrettyCure;

my @members = Acme::PrettyCure->new->members('AllStar');

for my $member (@members) {
    is $member->name, $member->human_name;
    next if ref($member) =~ /Cure(Black|White)/;
    $member->transform;
    is $member->name, $member->precure_name;
}

done_testing;

