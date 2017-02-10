source 'https://gems.ruby-china.org/'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
# Use postgressql as the database for Active Record
gem 'pg'
gem 'activerecord-postgis-adapter'
# locations
gem 'rgeo'
gem 'rgeo-activerecord'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# A Sprockets transformer that converts ES6 code into vanilla ES5 with Babel JS
gem 'sprockets-es6'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
gem 'font-awesome-rails'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'

# 分页
gem 'will_paginate'

# 用户系统
gem 'bcrypt'
gem 'jwt'

# 上传组件
gem 'carrierwave'
gem 'mini_magick'
gem 'carrierwave-upyun'
gem 'rest-client'
gem 'addressable'
gem 'remotipart', '~> 1.2'

# tags
gem 'acts-as-taggable-on'

# for api 跨域
gem 'rack-cors', require: 'rack/cors'

# YAML 配置信息
gem "settingslogic"

# Faker
gem "faker"

gem 'rails_autolink'
gem 'china_city'

gem 'jpush', '~> 4.0.2'

# Markdown
gem 'redcarpet', '~> 3.3.4'
gem 'rouge'
gem 'auto-space'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen'

  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  # gem 'capistrano-sidekiq'
  gem 'capistrano3-puma'
  gem 'memcache-client'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'letter_opener'
  gem 'thin'
  gem 'better_errors'            #出错提示友好版
  gem 'binding_of_caller'     #出错提示友好版
  gem 'rubocop', '~> 0.44.1', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

