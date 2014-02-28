module Stripper
  module Rails
    extend ActiveSupport::Concern

    module ClassMethods
      # Add before_validation callback for each field passed in field_list
      # the before_validation callback will remove trailing and preceding spaces upon valid call.
      def strip_fields(*field_list)
        before_validation do |object|
          field_list.each do |field|
            object.respond_to?(field) &&
            object.public_send(field).respond_to?(:strip!) &&
            object.public_send(field).strip!
          end
        end
      end
    end
  end
end
