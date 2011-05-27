require File.expand_path('../boot', __FILE__)


require 'action_controller/railtie'

# If you have a Gemfile, require the gems listed there, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env) if defined?(Bundler)

module JsusRailsApp
  class Application < Rails::Application
    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"


    # Jsus configuration
    config.middleware.use ::Jsus::Middleware

    ::Jsus::Middleware.settings = {
      # Save cached results into a folder?
      :cache         => true,

      # Folder containing cached results
      :cache_path    => "#{Rails.root}/public/javascripts/jsus/require",

      # Source packages
      :packages_dir  => "#{Rails.root}/vendor/js",

      # Enable pool reloading per request. With cached pool, updates to your
      # js source files won't be reflected in jsus-generated files.
      :cache_pool    => false,

      # When using /javascripts/jsus/include feature, it generates relative paths
      # using that directory as a root
      :includes_root => "#{Rails.root}/vendor/js"
    }

    # Disabled for performance, enable if you need to check for circular loops
    Jsus.look_for_cycles = false
  end
end
