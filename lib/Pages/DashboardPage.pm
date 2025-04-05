package DashboardPage;

use strict;
use warnings;
use parent 'BasePage';

sub is_logged_in {
    my ($self) = @_;
    return $self->find_element('div.logout', 'css', 0);
}

1;