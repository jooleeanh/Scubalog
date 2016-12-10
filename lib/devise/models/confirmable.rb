module Devise
  module Models
    module Confirmable
      def send_on_create_confirmation_instructions
        send_devise_notification(:confirmation_instructions)
      end
    end
  end
end
