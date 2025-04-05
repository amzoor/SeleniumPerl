package LoginPage;

use strict;
use warnings;
use parent 'BasePage';

sub enter_username {
    my ($self, $username) = @_;
    $self->find_element('input#username', 'css')->send_keys($username);
}

sub enter_password {
    my ($self, $password) = @_;
    $self->find_element('input#password', 'css')->send_keys($password);
}

sub click_login {
    my ($self) = @_;
    $self->find_element('button#signInBtn', 'css')->click();
}

1;