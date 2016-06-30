source 'https://ruby.taobao.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
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

gem "pg"

# locations
gem 'rgeo', '0.5.2'
gem 'rgeo-activerecord'
gem 'activerecord-postgis-adapter', '3.1.0'

gem 'rails-deprecated_sanitizer'

gem 'responders', '~> 2.0'

gem 'redis', '~> 3.2.1'
gem 'hiredis', '~> 0.6.0'
# Redis 命名空间
gem 'redis-namespace', '~> 1.5.1'
# 将一些数据存放入 Redis
gem 'redis-objects', '1.1.0'

# 用户系统
gem 'bcrypt'
gem 'jwt'

# 上传组件
gem 'carrierwave'
gem 'mini_magick'
gem 'carrierwave-upyun'
gem 'rest-client'
gem 'addressable'

gem 'china_city'

gem 'jpush', '~> 4.0.2'

# 枚举
gem 'enumerize'

# for api 跨域
gem 'rack-cors', require: 'rack/cors'

# Use Unicorn as the app server
# gem 'unicorn'

gem 'whenever'

gem 'puma'

# YAML 配置信息
gem "settingslogic"

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'rails_db'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  gem 'web-console'
  gem 'spring'
  gem 'capistrano'
  gem 'capistrano-rails', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rbenv', require: false
  gem 'capistrano3-puma'
  gem 'memcache-client'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara', :require => false
  gem 'letter_opener'
  gem 'thin'
  gem 'better_errors'            #出错提示友好版
  gem 'binding_of_caller'     #出错提示友好版
end

group :production do
  gem 'dalli'
end
