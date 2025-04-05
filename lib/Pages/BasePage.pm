package BasePage;

use strict;
use warnings;

sub new {
    my ($class, %args) = @_;
    my $self = {
        driver => $args{driver},
    };
    bless $self, $class;
    return $self;
}

sub find_element {
    my ($self, $locator, $type) = @_;
    return $self->{driver}->find_element($locator, $type);
}

1;