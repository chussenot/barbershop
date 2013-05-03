module BarberShop
  class Tracker
    include Authorize
    include Trello

    def initialize( project = nil, tag = '')
      authorize_on_trello
      @tag      = tag
      @actions  = []
    end

    # Read all cards comments to find a @mention a #tag
    # then parse the content to do action!
    def track
      # search in all board, for each comments
      # boards  = Trello::Board.all
      # cards   = boards.first.cards # open by default
      # members = boards.first.members
      # url     = cards.first.url
      Mention.all.each do |mention|
          case mention.message
          when /time/
          when /ticket/
          else
            # call (plugin)
          end
      end
    end

  end
end
