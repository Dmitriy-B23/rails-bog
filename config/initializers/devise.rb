Devise.setup do |config|
  # ==> Mailer Configuration
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  # If using Rails 5.1+ or greater, replace `confirm_within` with `reconfirmable`
  # config.confirm_within = 3.days

  # ==> ORM configuration
  require 'devise/orm/active_record'

  # ==> Configuration for any authentication mechanism
  # The secret key used by Devise. Devise uses this key to generate
  # random tokens. Changing this key will invalidate all existing
  # confirmation, reset password and unlock tokens in the database.
  # config.secret_key = 'some_secret_key'

  # ==> Configuration for :rememberable
  config.remember_for = 2.weeks

  # ==> Configuration for :validatable
  config.password_length = 6..128

  # ==> Configuration for :timeoutable
  config.timeout_in = 30.minutes

  # ==> Configuration for :lockable
  # config.lock_strategy = :failed_attempts
  # config.unlock_strategy = :both

  # ==> Configuration for :recoverable
  # config.reset_password_within = 6.hours

  # ==> Scopes configuration
  # config.scoped_views = false

  # ==> Navigation configuration
  config.sign_out_via = :delete

  # ==> OmniAuth
  # Add a new OmniAuth provider. Check the wiki for more information on setting
  # up on your models and hooks.
  # config.omniauth :github, 'APP_ID', 'APP_SECRET', scope: 'user,public_repo'
end

