source 'https://rubygems.org'
ruby '2.4.9'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.10'
# Use sqlite3 as the database for Active Record
gem 'pg', '~> 0.15'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Friendlier HTML Syntax
gem 'haml'

# Admin Panel
gem "admin", path: "admin"

# Bootstrap
gem 'bootstrap-sass', '~> 3.3.6'

# Heroku platform tools
gem 'rails_12factor'

# Image uploading
gem 'carrierwave'
gem 'mini_magick'

# Decorators
gem 'draper'

# Easy HTTP requests
gem 'rest-client'

# PDF Converter
# Need to keep it like this until any new version is released in where
# https://github.com/mileszs/wicked_pdf/commit/a544ba92132a3dbcdc1657d71f17b784629d2567
# has been merged.
gem 'wicked_pdf', github: "mileszs/wicked_pdf", branch: "master"

# gem 'wkhtmltopdf-binary'
gem 'wkhtmltopdf-heroku'

# Magnific PopUp
gem 'magnific-popup-rails'

# Autolink
gem 'rails_autolink'

# Routes in JS
gem 'js-routes'

# I18n in JS
gem "i18n-js", ">= 3.0.0.rc11"

# Mengpaneel for MixPanel
gem "mengpaneel"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'pry'
  gem 'pry-rails'
  gem 'pry-byebug' unless Gem.win_platform?
  gem 'pry-stack_explorer'
end

