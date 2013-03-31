source 'http://rubygems.org'

gem 'rails', '3.2.8'
gem "heroku"
gem "bcrypt-ruby"
gem 'rails3-jquery-autocomplete'
gem "cancan"
gem "paperclip"
gem 'cocaine', '0.5.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'
#gem 'mysql2'

group :production do
  #gem 'pg'
  gem 'thin'
end
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  # Add Foundation Here
  gem 'zurb-foundation', '~> 4.0.0'
end

gem 'jquery-rails'
gem 'execjs'
gem 'therubyracer', :platforms => :ruby
gem 'sorcery'

group :development, :test do
  gem "rspec-rails", ">= 2.8.1"
end

group :test do
  gem "factory_girl_rails", ">= 1.6.0"
  gem "cucumber-rails", ">= 1.2.1"
  gem "capybara", ">= 1.1.2"
  gem "database_cleaner"
  gem "launchy"
  gem "shoulda-matchers"
end
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
