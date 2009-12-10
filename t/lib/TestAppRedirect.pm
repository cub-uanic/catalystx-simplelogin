package TestAppRedirect;
use Moose;
use namespace::autoclean;

extends 'TestAppBase';

__PACKAGE__->config(
    'Controller::Login' => {
        traits => 'WithRedirect',
    },
    'Plugin::Session' => {
        flash_to_stash => 1
    }
);

__PACKAGE__->setup;

1;
