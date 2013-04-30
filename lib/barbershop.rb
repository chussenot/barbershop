#
#   BarberShop gem
#

require "barbershop/version"
require 'gaston'
require 'trello'
require 'github_api'
require 'typhoeus'
require 'virtus'
require 'chronic'               # Date parser
require 'rainbow'

Gaston.configure do |gaston|
  gaston.env   = ENV["RAILS_ENV"]
  gaston.files = Dir[File.expand_path("config/gaston/**/*.yml")]
end

module BarberShop

  require 'barbershop/authorize'

end
