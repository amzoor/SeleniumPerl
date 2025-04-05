use strict;
use warnings;
use Selenium::Remote::Driver;
use lib 'lib/pages';
use lib 'lib';
use Utils::BrowserFactory;
use Utils::Config;
use Utils::Logger;
use Utils::TestData;
use Pages::LoginPage;
use Pages::DashboardPage;

# Setup
my $browser = Config::get_browser();
my $driver = BrowserFactory::create_driver($browser);
Logger::log("Browser launched: $browser");

# Test
my $login_page = LoginPage->new(driver => $driver);
$login_page->enter_username(TestData::get_username());
$login_page->enter_password(TestData::get_password());
$login_page->click_login();
Logger::log("Login attempted");

my $dashboard_page = DashboardPage->new(driver => $driver);
if ($dashboard_page->is_logged_in()) {
    Logger::log("Login successful");
} else {
    Logger::log("Login failed");
}

# Teardown
$driver->quit();
Logger::log("Browser closed");