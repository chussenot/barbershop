module BarberShop
  # This class help to find trello cards
  # where the configure account owner is mention in cards comments
  # ex: @bot blablabla...
  class Mention
    include Virtus
    include Trello

    attribute :message, String
    attribute :notifier, Object
    attribute :date, Date
    attribute :unread, Boolean

    class << self
      include Authorize

      def all
        authorize_on_trello
        @me = Trello::Member.find('me')
        @me.notifications.select{ |n| n.type == "mentionedOnCard" }.map{ |note|
          build_from_trello_notification note
        }
      end

      def build_from_trello_notification notification
        notifier = Trello::Member.find(notification.member_creator_id)
        new(
          message:  notification.data['text'],
          notifier: Person.build_from_trello_member(notifier),
          date:     Date.parse(notification.date),
          unread:   notification.unread
        )
      end

    end

  end
end
