# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.

Rails.application.initialize!
if Rails.env.development? || Rails.env.production?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    :user_name => 'app69851461@heroku.com',
    :password => 'kbuyasce5771',
    :domain => 'blocipedia3-joe.herokuapp.com',
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
  }

end
