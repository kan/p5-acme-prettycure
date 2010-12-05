package Acme::PrettyCure::Role;
use Any::Moose '::Role';

use Perl6::Say;

requires qw(human_name precure_name challenge);

has 'is_precure' => (is => 'rw', isa => 'Bool', default => sub { 0 });

sub name {
    my $self = shift;

    return $self->is_precure ? $self->precure_name : $self->human_name;
}

sub transform {
    my ($self, $buddy) = @_;

    die "already transformed" if $self->is_precure;

    $self->is_precure(1);

    if ($buddy && !$buddy->is_precure) {
        say for $self->challenge;
    }

    return $self;
}

1;
