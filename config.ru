# This file is used by Rack-based servers to start the application.
#Rails.application.config.relative_url_root = '/Action Shoes'
require ::File.expand_path('../config/environment',  __FILE__)
run ActionShoes::Application
