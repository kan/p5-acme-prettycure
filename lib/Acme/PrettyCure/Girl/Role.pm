package Acme::PrettyCure::Girl::Role;
use utf8;
use Any::Moose '::Role';

use Encode;

requires qw(human_name precure_name challenge color);

has 'is_precure' => (is => 'rw', isa => 'Bool', default => sub { 0 });

sub say {
    my ($self, $text) = @_;
    my $color = $self->color;
    if ( defined $color ) {
        print "\e[38;5;${color}m";
    }
    print encode_utf8("$text\n");
    if ( defined $color ) {
        print "\e[0m";
    }
}

sub color { undef }

sub name {
    my $self = shift;

    return $self->is_precure ? $self->precure_name : $self->human_name;
}

sub transform {
    my ($self, $buddy) = @_;

    die "already transformed" if $self->is_precure;

    $self->is_precure(1);

    $self->say($_) for $self->challenge;

    return $self;
}

1;
__END__

=head1 NAME

Acme::PrettyCure::Girl::Role

=head1 SYNOPSIS

  my ($tsubomi,) = Acme::PrettyCure->girls('HeartCatch');
  say $tsubomi->name;

  $tsubomi->transform;

  say $tsubomi->name;

=head1 DESCRIPTION

  Pretty Cure Girls.

=head1 METHODS

=head2 name

return her name. if she transformed, return precure name.

=head2 transform

return girl can transform.

=head2 attributes

- human_name
- precure_name
- (fairy_name)
- birthday
- age
- blood_type

=head1 AUTHOR

Kan Fushihara E<lt>kan.fushihara at gmail.comE<gt>

=head1 SEE ALSO

C<Acme::MorningMusume>, C<Acme::AKB48>

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
