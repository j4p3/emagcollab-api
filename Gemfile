source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Views
# gem 'active_model_serializers', '~> 0.8.1' # Trying jbuilder instead

# DB & Heroku
gem 'rails_12factor'
gem 'pg'
gem 'unicorn'
gem 'faker', '~> 1.2.0'

# Admin
gem 'activeadmin', github: 'gregbell/active_admin'
# gem "meta_search",    '>= 1.1.0.pre'
gem 'bcrypt-ruby', '~> 3.1.2' # Use ActiveModel has_secure_password

# Images
gem 'aws-sdk'
gem 'paperclip', '~> 4.1'
gem 'rmagick', :require => 'RMagick'

# Worker Management
gem 'sidekiq'

# Dev
group :test, :development do
    gem 'annotate', '~> 2.5.0'
    gem 'rspec-rails'
    gem 'factory_girl_rails', '~> 4.4.0', :require => false
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

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

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
