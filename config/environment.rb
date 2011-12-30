# Load the rails application
require File.expand_path('../application', __FILE__)



#Rails::Initializer.run do |config|
# config.gem "mislav-will_paginate"
#end

Depot::Application.configure do
 config.action_mailer.delivery_method = :smtp
 config.action_mailer.smtp_settings = {
     :address => "charles@seitech.co.uk",
     :port => 110,
     :domain => "domain.of.sender.net",
     :authentication => "plain",
     :user_name => "pt34460812-1",
     :password => "shockwav",
     :enable_starttls_auto => true
}
end


require 'will_paginate'
# Initialize the rails application
Depot::Application.initialize!

