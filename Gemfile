source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma'
# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', group: :doc

# Use bootstrap as HTML, CSS and JS framework
gem 'bootstrap-sass'
gem 'bootswatch-rails'
gem 'autoprefixer-rails'

# Use devise for authentication
gem 'devise'
# Make devise invitable
gem 'devise_invitable'

# Display a cookie-consent bar
gem 'cookies_eu'

# js library clipboard.js integration via gem
gem 'clipboard-rails'

# use figaro to configure environment-specific settings
# config can be found at config/application.yml, which will NOT be checked into git
# TODO : put figaro config into README.md
gem 'figaro'

# colorize logger output
gem 'colorize'

group :production do
  gem 'therubyracer'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # open mails in browser instead of sending them (only in test and dev)
  gem 'letter_opener'
  gem 'letter_opener_web'
  gem 'awesome_print'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'meta_request'

  # use "rails erd" to generate entety relationship diagrams from our models
  gem "rails-erd"
  
  # suppress logging of asset pipeline in DEV
  gem 'quiet_assets'

  # enable dumping of db into a seed file
  #   run 'rake db:seed:dump' to dump seed.db
  #   Append to db/seeds.rb instead of overwriting it:
  #     rake db:seed:dump APPEND=true
  #   Use another output file instead of db/seeds.rb:
  #     rake db:seed:dump FILE=db/seed_dump.rb
  #   Exclude settings and users
  #     rake db:seed:dump MODELS_EXCLUDE=setting,user
  # Example: 'rake db:seed:dump FILE=db/seed_dump.rb MODELS_EXCLUDE=setting,user'
  gem 'seed_dump'
  
  # edit favicon settings in config/favicon.json
  # autogenerate favicons with 'rails generate favicon'
  gem 'rails_real_favicon'

  # https://github.com/flyerhzm/bullet
  # analyze queries
  gem 'bullet'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
