module Konacha
  class Engine < Rails::Engine
    # Do not mess up the application's namespace.
    # http://api.rubyonrails.org/classes/Rails/Engine.html#label-Isolated+Engine
    isolate_namespace Konacha

    config.konacha = ActiveSupport::OrderedOptions.new

    def self.application(app)
      Rack::Builder.app do
        use Rack::ShowExceptions

        map app.config.assets.prefix do
          run app.assets
        end

        map "/" do
          run Engine
        end
      end
    end

    initializer "konacha.environment" do |app|
      options = app.config.konacha

      options.spec_dir     ||= "spec/javascripts"
      options.spec_matcher ||= /_spec\.|_test\./
      options.port         ||= 3500
      options.application  ||= self.class.application(app)
      options.driver       ||= :selenium
      options.stylesheets  ||= %w(application)
      options.verbose      ||= false
      options.runner_port  ||= nil

      app.config.assets.paths << app.root.join(options.spec_dir).to_s
    end
  end
end
