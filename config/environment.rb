# Load the rails application
require File.expand_path('../application', __FILE__)
Depot::Application.initialize!


#Rails::Initializer.run do |config|
# config.gem "mislav-will_paginate"
#end

Depot::Application.configure do
 config.action_mailer.delivery_method = :smtp
 config.action_mailer.smtp_settings = {
     :address => "smtp.gmail.com",
     :port => 995,
     :domain => "http://localhost:3000/",
     :authentication => "plain",
     :user_name => "mooringmanager02",
     :password => "shockwave",
     :enable_starttls_auto => true
}
end


require 'will_paginate'
# Initialize the rails application


