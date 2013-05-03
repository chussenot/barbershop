# This module help to store models
module BarberShop
  module Harmony

    module ClassMethods

      def collection_name
        self.to_s.gsub!(/::/,'.').downcase
      end

      def collection
        BarberShop.database.collection(collection_name)
      end

      def find_one(options = {})
        result = collection.find_one options
        result nil unless result
        new result
      end

      def find( options = {})
        results = collection.find options
        results.map{|result| self.new(result) }
      end

      def count
        collection.count
      end

    end

    module InstanceMethods

      def save
        self.class.collection.insert(self.attributes)
      end

      def destroy
        self.class.collection.remove(self.attributes)
      end

    end

  end
end
