module BarberShop
  class Time
    include Virtus
    attribute :worktype_id, Integer
    attribute :person_id, Integer
    attribute :date, DateTime
    attribute :time, Time
    attribute :billable, Boolean

    # Create a new time ressource with myinternals API
    # http://www.myintervals.com/api/resource.php?r=time
    # POST /time/
    def save
    end

    # Update time
    # PUT /time/{id}
    def update
    end
  end
end
