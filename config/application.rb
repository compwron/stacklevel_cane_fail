# require File.expand_path('../boot', __FILE__)

require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'active_resource/railtie'
require 'active_model/railtie'
require 'active_record/railtie'
require 'rails/test_unit/railtie'
require 'sprockets/railtie'

# This is due to poor psych YAML performance with Ruby 1.9.3
# Take this away once we get above Ruby 2
YAML::ENGINE.yamler = 'syck'

if defined?(Bundler)
  # If you precompile assets before deploying to production, use this line
  Bundler.require(*Rails.groups(:assets => %w(development test)))
  # If you want your assets lazily compiled in production, use this line
  Bundler.require(:default, :assets, Rails.env)
end

module Foo
  class Application < Rails::Application
    # TODO: Bring this config to bpro shared gem
    config.style_guide.paths = [
      Rails.root.join("app/views/style-guide/**/*"),
      BProWebBase::Engine.root.join("app/views/style-guide/**/*")
    ]

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Custom directories with classes and modules you want to be autoloadable.
    config.autoload_paths += %W(
    )

    # Only load the plugins named here, in the order given (default is alphabetical).
    # :all can be used as a placeholder for all plugins not explicitly named.
    # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

    # Activate observers that should always be running.
    # config.active_record.observers = :cacher, :garbage_collector, :forum_observer

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    # Enable escaping HTML in JSON.
    config.active_support.escape_html_entities_in_json = true

    # Use SQL instead of Active Record's schema dumper when creating the database.
    # This is necessary if your schema can't be completely dumped by the schema dumper,
    # like if you have constraints or database-specific column types
    # *** NOTE: We remove this b/c we have no database
    # config.active_record.schema_format = :sql

    # Enforce whitelist mode for mass assignment.
    # This will create an empty whitelist of attributes available for mass-assignment for all models
    # in your app. As such, your models will need to explicitly whitelist or blacklist accessible
    # parameters by using an attr_accessible or attr_protected declaration.
    #
    # *** NOTE: We remove this b/c we have no database
    # config.active_record.whitelist_attributes = false

    # Enable the asset pipeline
    config.assets.enabled = true
    config.assets.initialize_on_precompile = false
    config.assets.precompile += %w(
      vendor.js
      views/restaurants/index.js
      print.css
      ie-specific.css
      jquery-ui-custom-datepicker.css
      digest.css
      unsubscribe.css
      extras/unsubscribe.js
    )

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'

    # Rspec is our test framework of choice...
    config.generators do |g|
      g.test_framework :rspec
    end

    # require 'app_config'
    # config.cache_store = :redis_store, {
    #   :host       => AppConfig.redis.host,
    #   :port       => AppConfig.redis.port,
    #   :password   => AppConfig.redis.password,
    #   :db         => AppConfig.redis.cache_db,
    #   :namespace  => AppConfig.redis.namespace || "random" + rand.to_s,
    # }

    config.sass.load_paths << File.expand_path('../../vendor/assets/stylesheets/')
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
  end
end

