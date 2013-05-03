require 'forwardable'

module BarberShop
  module Tracking
    # This module help us to track
    # mention message
    module Plugin

      def_delegator :@mention, :message, :message
      attr_reader   :bot

      def initialize( bot, mention )
        @bot     = bot
        @mention = mention
      end

    end
  end
end
