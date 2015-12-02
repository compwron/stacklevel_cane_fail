source 'https://rubygems.org'

if RUBY_VERSION =~ /1.9/
  Encoding.default_external = Encoding::UTF_8
  Encoding.default_internal = Encoding::UTF_8
end

gem 'rails', '3.2.12'
gem 'typhoeus'
gem 'redis'
gem 'redis-rails'
gem 'addressable'
gem 'oj' # Faster JSON
gem 'mysql2'

gem 'resque', '1.25.2', require: 'resque/server'
gem 'resque-scheduler'
gem 'resque-cleaner', '0.2.12'
gem 'resque-retry'
gem 'resque-pool', git: 'https://github.com/nevans/resque-pool.git', ref: '5ff117db'
gem 'resque-status', git: 'https://github.com/jkrall/resque-status.git', ref: 'HEAD'

gem 'devise'
gem 'omniauth'
gem 'cancan'
gem 'strong_parameters'  # New attr_accessible behavior, default in Rails 4.0
gem 'gem-groupon-oauth', git: 'git@github.groupondev.com:MerchantOS/gem-groupon-oauth.git'
gem 'gem-payments-ds', git: 'git@github.groupondev.com:payments/gem-payments-ds.git', ref: 'HEAD'

gem 'haml-rails'
gem 'activeuuid'
gem 'rollout'

gem 'bpro-web-base', git: 'git@github.groupondev.com:MerchantOS/gem-bpro-web-base.git', ref: 'HEAD'
# gem 'bpro-web-base', path: "../gem-bpro-web-base" # local dev

gem 'gem-merchantos-mailer', git: 'git@github.groupondev.com:MerchantOS/gem-merchantos-mailer.git', ref: 'HEAD'
# gem 'gem-merchantos-mailer', path: "../gem-merchantos-mailer" # local dev
gem 'premailer'

gem 'log4mos', git: 'git@github.groupondev.com:MerchantOS/log4mos.git'
gem 'request_context', git: 'git@github.groupondev.com:MerchantOS/request_context.git'
gem 'airbrake'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails'
  gem 'coffee-script-source', '~> 1.6.2'
  gem 'uglifier', '>= 1.0.3'
  gem 'handlebars_assets'
  gem 'compass-rails'
end
gem 'jquery-rails'
gem 'style-guide'

gem 'active_model_serializers', :git => 'https://github.com/rails-api/active_model_serializers.git'
gem 'enumerate_it'
gem 'fast-aes'
gem 'uuidtools'
gem 'fog', '1.17.0'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :development, :'dev-prod', :onebox do
  gem 'pivotal_git_scripts'
  gem 'coffee-rails-source-maps'
  gem 'quiet_assets'
end

group :development, :'dev-prod', :test, :onebox do
  gem 'annotate', '~> 2.6.5'
  gem 'awesome_print', '~> 1.6.1'
  gem 'pry-rails'
  gem 'rspec-rails', '>= 2.14.0'
  gem 'guard'
  gem 'guard-livereload'
  gem 'guard-konacha'
  gem 'guard-rspec'
  gem 'thin'
  gem 'rack-livereload'
  gem 'foreman'
  gem 'rb-fsevent', '~> 0.9'
  gem 'railroady'
  gem 'konacha'
  gem 'capybara', github: 'jnicklas/capybara'
  gem 'poltergeist'
  gem 'cane'
  gem 'spring', '~> 1.0.0'
  gem 'parallel_tests'
end

group :test do
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'cucumber-rails', require: false
  gem 'faker'
  gem 'webmock'
  gem 'ruby-prof'
  gem 'timecop'
  gem 'spork-rails'
  gem 'simplecov', :git => 'https://github.com/colszowka/simplecov.git', :require => false
  gem 'simplecov-rcov', :require => false
  gem 'resque_spec'
  gem 'vcr'
  gem 'launchy'
  gem 'selenium-webdriver'
  gem 'ci_reporter_cucumber'
  gem 'ci_reporter_rspec'
  gem 'stats-core-api', git: "git@github.groupondev.com:MerchantOS/gem-stats-core.git"
  gem 'ar_outer_joins', git: 'git@github.groupondev.com:MerchantOS/ar_outer_joins.git'
end

group :production do
  gem 'unicorn'
  gem 'payments-deployment', git: 'git@github.groupondev.com:payments/gem-deployment.git', ref: 'HEAD'
end

group :everyone_except_rubymine do
  # gem 'pry-byebug'
end
