module BarberShop
  module Authorize
    include Trello::Authorization

    def authorize_on_trello
      Trello.configure do |config|
        config.developer_public_key   = Gaston.trello.developer_public_key
        config.member_token           = Gaston.trello.member_token
      end
    end

    # https://github.com/peter-murach/github
    def authorize_on_github
      github = Github.new do |config|
        # config.
      end
    end

    # http://www.myintervals.com/api/authentication.php
    def authorize_on_timetask
    end

  end
end
