# This class can store informations about a client
# we can collect with timetask.com API
module BarberShop
  class Client
    include Virtus
    attribute :name, String
  end
end
