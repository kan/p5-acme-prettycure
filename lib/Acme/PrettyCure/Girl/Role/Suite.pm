package Acme::PrettyCure::Girl::Role::Suite;
use utf8;
use Any::Moose '::Role';

after 'transform' => sub {
    my ($self, @buddies) = @_;

    my $first = 0;
    unless ($buddies[0] && $buddies[0]->is_precure) {
        $first = 1;
    }

    for my $buddy (@buddies) {
        unless ($buddy->is_precure) {
            $buddy->transform($self);
        }
    }

    if ($first) {
        $self->say('スイートプリキュア' . ('!' x (scalar(@buddies)+1)) );
    }
};



1;

