# Behaviors
disable_system_gems

# Paths
bundle_path "vendor/bundler_gems"
bin_path "script"

# Sources
clear_sources
source "http://gemcutter.org"
source "http://gems.rubyforge.org/"
source "http://gems.github.com"

# Stack
directory "vendor/stack" do
  gem "rails", "2.3.4"
  gem "rack", "1.0.0"
  gem "unicorn", "0.93.3"
end

# Application
gem "authlogic", :version => '2.1.2'

# Testing
only: test do
  directory "vendor/test" do
    gem "rspec", :version => '1.2.9', :require_as => 'spec'
    gem "rspec-rails", :version => '1.2.9'
    gem "webrat", :version => '0.5.3'
    gem "cucumber", :version => '0.4.2'
    gem "spork" , :version => '0.7.3'
    gem "thoughtbot-factory_girl", :require_as => 'factory_girl'
  end
end