source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.2', '>= 6.0.2.2'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Flexible authentication solution for Rails with Warden
gem 'devise', '~> 4.7', '>= 4.7.1'
# Administrative framework for Ruby on Rails
gem 'activeadmin', '~> 2.7'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
	# Use sqlite3 as the database for Active Record
	gem 'sqlite3', '~> 1.4'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
	# Debug tool; interactive console on exceptions or calling 'console'
  gem 'web-console', '~> 4.0', '>= 4.0.2'
	# Listens to file modifications and notifies about the changes
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Preloads app so things like console, rake and tests run faster
  gem 'spring', '~> 2.1'
	# Makes Spring watch files using the listen gem
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Integration testing tool to simulate user interaction with a website
  gem 'capybara', '~> 3.32', '>= 3.32.2'
  # Tool for writing automated tests for websites to mimic user behaviour
  gem 'selenium-webdriver', '~> 3.142', '>= 3.142.7'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers', '~> 4.4', '>= 4.4.1'
  # Brings back assigns and assert_template to controller and integration tests
  gem 'rails-controller-testing', '~> 1.0', '>= 1.0.4'
  # Provides testing facilities supporting TDD, BDD, mocking and benchmarking
  gem 'minitest', '~> 5.14', '>= 5.14.1'
  # Extend MiniTest through simple hooks
  gem 'minitest-reporters', '~> 1.4', '>= 1.4.2'
  # Command line tool to easily handle events on file system modifications
  gem 'guard', '~> 2.16', '>= 2.16.2'
  # Automatically runs tests with MiniTest framework
  gem 'guard-minitest', '~> 2.4', '>= 2.4.6'
end

group :production do
	# Ruby interface to the PostgreSQL RDBMS
	gem 'pg', '~> 1.2', '>= 1.2.3'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
