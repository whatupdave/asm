require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

STDOUT.sync = true

module ASM
  class Application < Rails::Application

    # Serve static assets. Heroku needs this for production.
    config.serve_static_assets = true

    config.generators do |g|
      g.orm :active_record
      g.template_engine :haml
      g.test_framework :rspec, :fixure => false
      g.stylesheets false
      g.helpers false
    end
  end
end
