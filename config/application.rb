require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module ASM
  class Application < Rails::Application

    # Serve static assets. Heroku needs this for production.
    config.serve_static_assets = false

    # Use a logger that writes to STDOUT. Taken from:
    # https://github.com/heroku/rails_log_stdout/blob/master/lib/rails_log_stdout/rails.rb
    config.logger = Logger.new(STDOUT)
    log_level_name = (
      [ENV['LOG_LEVEL'].to_s.upcase, "INFO"] &
      %w{DEBUG INFO WARN ERROR FATAL UNKNOWN}
    ).compact.first
    config.logger.level = Logger.const_get(log_level_name)

    # Force STDOUT to flush whenever it recieves input. Otherwise it batches log
    # lines together which makes them difficult to read.
    STDOUT.sync = true

  end
end
