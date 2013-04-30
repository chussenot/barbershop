module BarberShop
  class Person
    include Virtus

    # store ids from different providers
    attribute :trello_id,   String
    attribute :timetask_id, String
    attribute :github_id,   String

    # basic informations to describe a user
    attribute :full_name,   String
    attribute :username,    String
    attribute :url,         String
    attribute :bio,         String
    attribute :email,       String

    # informations we can extract from biography
    attribute :worktype,    String

    class << self

      # Trello ressource : member
      # https://trello.com/docs/api/member/index.html
      def build_from_trello_member( member )
       trello_id = member.id
       member.attributes.delete(:id)
       new(member.attributes.merge(trello_id: trello_id))
      end

      # TimeTask ressource : Person
      # http://www.myintervals.com/api/resource.php?r=person
      def build_from_timetask_person( person )
        # username
        # email
        # firstname
        # lastname
      end

      # Github ressource : User
      # https://github.com/peter-murach/github/blob/master/lib/github_api/users.rb#L82
      def build_from_github_user( user )
        # name
        # email
        # blog
        # company
        # location
        # bio
      end

    end

    # This method extract data from the bio field
    # to extract required information about person worktype (dev, cdp, etc.)
    def extract_meta
    end

  end
end
