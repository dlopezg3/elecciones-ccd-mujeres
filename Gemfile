source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false

gem 'autoprefixer-rails'
gem 'font-awesome-sass'
gem 'simple_form'
gem 'devise'
gem 'cloudinary', '~> 1.12.0'

gem 'sidekiq'
gem 'sidekiq-failures', '~> 1.0'
gem 'redis'
gem 'postmark-rails'

gem 'activeadmin', github: 'activeadmin/activeadmin'
gem 'activeadmin-xls', '~>2.0.0'
gem 'inherited_resources', github: 'activeadmin/inherited_resources'

gem 'pundit'

gem 'letter_opener', group: :development

group :development, :test do
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'dotenv-rails'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
