module ChattyCrow
  module Request
    # Jabber request
    class Jabber < BaseRequest
      def initialize(*args)
        super(*args)

        # If arguments exists set as body into options!
        # Its for just easy ChattyCrow.send_jabber 'Hello'
        @options[:body] = @arguments_flatten if @arguments_flatten

        # Set payload
        @payload = @options
      end
    end
  end
end
