# This class help to store info about projects
# Note : in Trello with have one *board* by project
module BarberShop

  class Project
    include Virtus
    include Record
    attribute :name, String

  end

end
