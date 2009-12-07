# Behaviors
disable_system_gems

# Paths
bundle_path "vendor/bundler_gems"

# Sources
clear_sources
source "http://gemcutter.org"
source "http://gems.github.com"

# Stack
gem "rails", "2.3.4"
gem "rack", "1.0.0"
gem "unicorn", "0.93.3"
gem "mysql", "2.8.1"

# Application
gem "authlogic", :version => '2.1.2'

# Testing
only :test do
  gem "rspec", '1.2.9', :require_as => 'spec'
  gem "rspec-rails", '1.2.9'
  gem "webrat", '0.5.3'
  gem "cucumber", '0.4.2'
  gem "spork" , '0.7.3'
  gem "thoughtbot-factory_girl", '1.2.2', :require_as => 'factory_girl'
end