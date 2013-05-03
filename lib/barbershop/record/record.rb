require 'barbershop/record/harmony'

module BarberShop
  module Record
    include BarberShop::Harmony::InstanceMethods

    def self.included(base)
      base.extend(BarberShop::Harmony::ClassMethods)
    end

  end
end
