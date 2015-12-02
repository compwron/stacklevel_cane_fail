require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'active_resource/railtie'
require 'active_model/railtie'
require 'active_record/railtie'
require 'rails/test_unit/railtie'
require 'sprockets/railtie'

if defined?(Bundler)
  Bundler.require(*Rails.groups(:assets => %w(development test)))
  Bundler.require(:default, :assets, Rails.env)
end

module Foo
  class Application < Rails::Application
    config.generators do |g|
      g.test_framework :rspec
    end
  end
end

