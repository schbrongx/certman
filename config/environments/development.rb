Rails.application.configure do

puts "  Loading config/development.rb".green

  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false
  
  # set delivery_method to :letter_opener to use the letter_opener gem and dont send real emails
  # or set it to :smtp to send real emails. SMTP_* settings are set in application.yml. refer to
  # README.md for more information
  config.action_mailer.delivery_method = :letter_opener
  # config.action_mailer.delivery_method = :smtp
  # define actionmailer smtp settings
  config.action_mailer.smtp_settings = {
    :address        => ENV["SMTP_HOSTNAME"],
	  :port           => ENV["SMTP_PORT"].to_i,
	  :user_name      => ENV["SMTP_USERNAME"],
	  :password       => ENV["SMTP_PASSWORD"],
	  :authentication => 'plain',
	  :enable_starttls_auto => true
  }

  # default url and port of server running certman. this is used for generating links in invitation emails
  config.action_mailer.default_url_options = { host: ENV["ACTION_MAILER_DEFAULT_URL_OPTION_HOST"], port: ENV["ACTION_MAILER_DEFAULT_URL_OPTION_PORT"].to_i }
  puts "    config.action_mailer.default_url_options: #{config.action_mailer.default_url_options.to_s}".yellow
  
  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
  

  # whitelist 0.0.0.0 for webconsole on dev
  config.web_console.whitelisted_ips = ENV["WHITELISTED_IPS"]  # bionstrasse 1, st. gallen

  # config for gem 'bullet'
  # only needed in development
  config.after_initialize do
    Bullet.enable = true
    Bullet.bullet_logger = true
    Bullet.console = true
    Bullet.rails_logger = true
    Bullet.add_footer = true
  end
  
end
