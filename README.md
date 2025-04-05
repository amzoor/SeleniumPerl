<!-- 
This README file provides an overview of the Selenium Perl Framework, a test automation framework using the Page Object Model (POM) design pattern. It highlights the framework's features, including logging, reporting, browser compatibility, and CI/CD integration with GitHub Actions. Additionally, it outlines the prerequisites and detailed installation steps for setting up the framework on a fresh machine.
-->
# Selenium Perl Framework

This is a Selenium automation framework written in Perl. It uses the Page Object Model (POM) for maintainability and integrates with GitHub Actions for CI/CD. The framework supports Chrome and Firefox browsers and includes logging and reporting features.

---

## Features
- **Page Object Model (POM):** Modular and maintainable design for test scripts.
- **Logging and Reporting:** Logs test execution details and generates reports.
- **Browser Compatibility:** Supports both Chrome and Firefox.
- **CI/CD Integration:** GitHub Actions for automated test execution.

---

## Prerequisites

Before setting up the framework, make sure the following prerequisites are installed on your machine:

1. **Perl**  
   Install Perl (version 5.32 or higher).  
   On macOS, Perl is pre-installed. To check the version, run:
   ```bash
   perl -v
   ```
   If Perl is not installed, download and install it from [Perl.org](https://www.perl.org/get.html).

2. **CPAN (Comprehensive Perl Archive Network)**  
   CPAN is required for managing Perl modules. To check if CPAN is installed, run:
   ```bash
   cpan -v
   ```
   If not installed, you can install it using:
   ```bash
   curl -L https://cpanmin.us | perl - --self-upgrade
   ```

3. **Chrome and Firefox Browsers**  
   Download and install the latest versions of Chrome and Firefox from their official websites:
   - [Google Chrome](https://www.google.com/chrome/)
   - [Mozilla Firefox](https://www.mozilla.org/firefox/)

4. **ChromeDriver and GeckoDriver**  
   These are required for browser automation:
   - Download ChromeDriver from [ChromeDriver Downloads](https://chromedriver.chromium.org/downloads).
   - Download GeckoDriver from [GeckoDriver Releases](https://github.com/mozilla/geckodriver/releases).

   After downloading, move the drivers to a directory in your system's PATH or update the PATH environment variable to include the directory containing the drivers.

5. **Git**  
   Install Git for version control. Download it from [Git Downloads](https://git-scm.com/downloads).

6. **Make Utility**  
   Ensure `make` is installed on your system. On macOS, you can install it via Xcode Command Line Tools:
   ```bash
   xcode-select --install
   ```
   On Linux, use your package manager:
   ```bash
   sudo apt-get install build-essential
   ```

---

## Installation Steps

Follow these steps to set up the Selenium Perl Framework:

1. **Clone the Repository**  
   Clone the framework repository to your local machine:
   ```bash
   git clone https://github.com/amzoor/selenium-perl-framework.git
   cd selenium-perl-framework
   ```

2. **Install Dependencies**  
   Use CPAN to install the required Perl modules:
   ```bash
   cpan install Selenium::Remote::Driver
   cpan install Test::More
   cpan install Log::Log4perl
   cpan install XML::Simple
   ```

3. **Verify Setup**  
   Run the following command to verify the setup:
   ```bash
   perl -c tests/login_test.pl
   ```
   This should check the syntax of the sample test script without errors.

---

## Usage

To execute tests, run:
```bash
perl tests/sample_test.pl
```

Reports and logs will be generated in the `logs` and `reports` directories.

---

## Support

For issues or questions, please open an issue in the [GitHub repository](https://github.com/amzoor/selenium-perl-framework/issues).

---

## Uninstallation Steps

If you need to remove the Selenium Perl Framework and its setup, follow these steps:

1. **Remove the Cloned Repository**  
   Delete the cloned repository from your local machine:
   ```bash
   rm -rf /path/to/selenium-perl-framework
   ```

2. **Uninstall Perl Modules**  
   Use CPAN to uninstall the Perl modules installed for the framework:
   ```bash
   cpan uninstall Selenium::Remote::Driver
   cpan uninstall Test::More
   cpan uninstall Log::Log4perl
   cpan uninstall XML::Simple
   ```

3. **Remove Browser Drivers**  
   Delete the ChromeDriver and GeckoDriver from your system's PATH:
   - **On macOS/Linux:**
     ```bash
     sudo rm /usr/local/bin/chromedriver
     sudo rm /usr/local/bin/geckodriver
     ```
   - **On Windows:**
     Delete the driver files from the folder added to the PATH (e.g., `C:\Drivers`).

4. **Clean Up Logs and Reports**  
   If any logs or reports were generated, delete them:
   ```bash
   rm -rf /path/to/selenium-perl-framework/logs
   rm -rf /path/to/selenium-perl-framework/reports
   ```

5. **Optional: Remove Git**  
   If Git was installed solely for this framework and is no longer needed, uninstall it:
   - On macOS/Linux, use your package manager:
     ```bash
     sudo apt-get remove git
     ```
   - On Windows, uninstall Git via **Control Panel** > **Programs and Features**.

6. **Optional: Remove Make Utility**  
   If `make` was installed solely for this framework, you can uninstall it:
   - On macOS, remove Xcode Command Line Tools:
     ```bash
     sudo rm -rf /Library/Developer/CommandLineTools
     ```
   - On Linux, use your package manager:
     ```bash
     sudo apt-get remove build-essential
     ```

These steps will completely remove the Selenium Perl Framework and its dependencies from your system.