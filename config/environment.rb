# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.3' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  require 'open-uri'
  require 'yaml'
  
  config.time_zone = 'UTC'
  config.i18n.default_locale = :en
  config.active_record.partial_updates = true

  # Settings in config/environments/* take precedence over those specified here.
  # Application configuration should go into files in config/initializers
  # -- all .rb files in that directory are automatically loaded.

  # Add additional load paths for your own custom dirs
  # config.load_paths += %W( #{RAILS_ROOT}/extras )

  # Specify gems that this application depends on and have them installed with rake gems:install
  # config.gem "bj"
  # config.gem "hpricot", :version => '0.6', :source => "http://code.whytheluckystiff.net"
  # config.gem "sqlite3-ruby", :lib => "sqlite3"
  # config.gem "aws-s3", :lib => "aws/s3"
  config.gem "authlogic"
  config.gem 'thoughtbot-shoulda', :lib => 'shoulda/rails', :source => "http://gems.github.com"
  config.gem 'webrat', :lib => "webrat", :source => "http://gems.github.com"
  config.gem "thoughtbot-factory_girl", :lib => "factory_girl", :source => "http://gems.github.com"
  config.gem 'redgreen', :version=> "1.2.2"

  config.gem 'mislav-will_paginate', :version => '2.3.11', :lib => 'will_paginate', :source => 'http://gems.github.com'
  config.gem "openrain-action_mailer_tls", :version => '1.1.3', :lib => "smtp_tls", :source => "http://gems.github.com"
  config.gem 'thoughtbot-paperclip', :version => '2.2.9.2', :lib => 'paperclip', :source => 'http://gems.github.com'
  config.gem 'right_aws', :version => '1.9.0' # TODO change to aws-s3 when paperclip does; right_aws 1.10.0 acts funny
  config.gem 'right_http_connection', :version => '1.2.4'
  config.gem "mbleigh-acts-as-taggable-on", :source => "http://gems.github.com", :lib => "acts-as-taggable-on"
  
  
  
  # Only load the plugins named here, in the order given (default is alphabetical).
  # :all can be used as a placeholder for all plugins not explicitly named
  # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

  # Skip frameworks you're not going to use. To use Rails without a database,
  # you must remove the Active Record framework.
  # config.frameworks -= [ :active_record, :active_resource, :action_mailer ]

  # Activate observers that should always be running
  # config.active_record.observers = :cacher, :garbage_collector, :forum_observer

  # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
  # Run "rake -D time" for a list of tasks for finding time zone names.
  config.time_zone = 'UTC'

  # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
  # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}')]
  # config.i18n.default_locale = :de
  
  
  # support yaml and heroku config
  CONFIG = (YAML.load_file('config/config.yml')[RAILS_ENV] rescue {}).merge(ENV)
  
  # consider s3 enabled if the configuration options have been set
  CONFIG['s3_access_id'] && CONFIG['s3_secret_key'] && CONFIG['s3_bucket_name'] ? CONFIG['s3'] = true : CONFIG['s3'] = false
  
  config.action_controller.session = {
    :key => CONFIG['session_key'],
    :secret => CONFIG['session_secret']
  }
  
end