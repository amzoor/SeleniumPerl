package Logger;

use strict;
use warnings;
use IO::File;

sub log {
    my ($message) = @_;
    my $fh = IO::File->new(">> logs/test_log.log") or die "Cannot open log file: $!";
    print $fh "$message\n";
    $fh->close;
}

1;