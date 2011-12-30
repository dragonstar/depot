# Load the rails application
require File.expand_path('../application', __FILE__)



#Rails::Initializer.run do |config|
# config.gem "mislav-will_paginate"
#end

require 'will_paginate'
# Initialize the rails application
Depot::Application.initialize!

