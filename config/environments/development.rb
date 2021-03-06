Chalkboard::Application.configure do
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

  # Actually send emails
  config.action_mailer.perform_deliveries = true

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Use SMTP to delivery emails
  config.action_mailer.delivery_method = :smtp

  # Set parameters to establish links in email views
  config.action_mailer.default_url_options = { host: '127.0.0.1', port: 3000 }

  # setting config.serve_static_assets to false will prevent the server 
  # from loading twice; see SO 8170039
  config.serve_static_assets = false 

  # set email options
  ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :domain               => "gmail.com",
    :user_name            => "douglas.duhaime@gmail.com",
    :password             => "PASSWORD_PLACEHOLDER",
    :authentication       => "plain",
    :enable_starttls_auto => true
    # uncomment this line and add comma to true above to skip ssl errors
    #:openssl_verify_mode  => 'none'
  }

end
