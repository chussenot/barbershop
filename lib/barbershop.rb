#
#   BarberShop gem
#

require "barbershop/version"
require 'mongo'
require 'active_support'
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

require 'barbershop/setup'

module BarberShop
  extend BarberShop::Setup

  require 'barbershop/authorize'
  require 'barbershop/record/record'

  require 'barbershop/models/client'

end
