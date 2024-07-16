require 'tempfile'

class RailsApp < Rails::Application
  config.logger = Logger.new(Tempfile.new '')
  config.filter_parameters += [:password]
  config.eager_load = false
  config.cache_format_version = 7.1
end
