require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module InstaAppVer2
  class Application < Rails::Application
    config.load_defaults 6.1
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    config.generators do |g|
      g.assets false
    end
  end
end