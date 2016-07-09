require 'onewheel-google'

module Lita
  module Handlers
    class OnewheelYoutube < Handler
      config :custom_search_engine_id
      config :google_api_key
      config :safe_search, required: false, default: 'medium'

      route /^google\s+(.*)$/, :search, command: true

      def search(response)
        query = response.matches[0][0]
        result = ::OnewheelGoogle::search(query, config.custom_search_engine_id, config.google_api_key, config.safe_search)
        reply = "#{result['items'][0]['link']} #{result['items'][0]['title']}: #{result['items'][0]['snippet']}".sub(/\n/, ' ')[0..500]
        response.reply reply
      end

      Lita.register_handler(self)
    end
  end
end
