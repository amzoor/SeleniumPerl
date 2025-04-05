package BrowserFactory;

use strict;
use warnings;
use Selenium::Remote::Driver;

sub create_driver {
    my ($browser) = @_;
    
    $browser ||= 'chrome'; # Default to Chrome if no browser is provided

    die "Unsupported browser: $browser" unless $browser =~ /^(chrome|firefox|edge)$/;

    my %capabilities = (
        chrome  => { "goog:chromeOptions" => { args => ['--headless'] } },
        firefox => { "moz:firefoxOptions" => { args => ['-headless'] } },
        edge    => {}
    );

    return Selenium::Remote::Driver->new(
        browser_name => $browser,
        extra_capabilities => $capabilities{$browser}
    );
}

1;