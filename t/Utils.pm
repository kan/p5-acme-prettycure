use strict;
use warnings;
use utf8;

use Test::More;
use Encode;

sub is_output(&$$) {
    my ($func, $expected, $comment) = @_;

    my $output;
    open my $OUT, '>', \$output;
    local *STDOUT = $OUT;
    $func->();
    close($OUT);
    is decode_utf8($output), $expected, $comment;
}

1;
