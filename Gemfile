source 'https://rubygems.org'
ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'
gem 'pg' 

# Use sqlite3 as the database for Active Record
group :production do
  gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
  gem 'rails_12factor'
end

group :development do  
  gem 'quiet_assets'  
end

group :assets do
  # Use SCSS for stylesheets
  gem 'sass-rails', '~> 4.0.0'
  # Use SCSS for stylesheets
  gem 'bootstrap-sass', '~> 2.3.1.1'
  
  # Use Uglifier as compressor for JavaScript assets
  gem 'uglifier', '>= 1.3.0'

  # Use CoffeeScript for .js.coffee assets and views
  gem 'coffee-rails', '~> 4.0.0'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  #gem 'therubyracer', platforms: :ruby
  
end

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

#user_authentication
gem 'devise'


gem "therubyracer", platforms: :ruby

gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails"

#upgrade from rails3
gem 'protected_attributes'
gem 'rails-observers'
gem 'actionpack-page_caching'
gem 'actionpack-action_caching'
gem 'activerecord-deprecated_finders'
gem 'builder'
gem 'minitest'
gem 'tzinfo'

#editor
gem 'bootstrap-wysihtml5-rails', :require => 'bootstrap-wysihtml5-rails',
                              :git => 'git://github.com/Nerian/bootstrap-wysihtml5-rails.git'

#user_authority
gem 'cancan'

#localserver
gem 'puma'

#cloudfolder
gem "paperclip", :git => "git://github.com/thoughtbot/paperclip.git"
gem "paperclip-dropbox", ">= 1.1.7"
gem 'dropbox-sdk'

#securityform
gem 'honeypot-captcha'

# location, maps, route
gem 'gmaps4rails', ">=2.0"
gem "geocoder"
#gem 'client_side_validations'
#gem 'simple_captcha', :git => 'git://github.com/galetahub/simple-captcha.git'
#gem 'negative_captcha'
#gem 'strong_parameters'

#gem "recaptcha", :require => "recaptcha/rails"


#heroku db:push --confirm 

