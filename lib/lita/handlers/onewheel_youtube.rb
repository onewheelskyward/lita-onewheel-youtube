require 'onewheel-google'

module Lita
  module Handlers
    class OnewheelYoutube < Handler
      config :custom_search_engine_id
      config :google_api_key
      config :safe_search, required: false, default: 'medium'

      route /^youtube\s+(.*)$/i, :search, command: true

      def search(response)
        query = response.matches[0][0]
        result = ::OnewheelGoogle::search('site:youtube.com ' + query, config.custom_search_engine_id, config.google_api_key, config.safe_search)
        first_item = result['items'][0]
        video_id = first_item['pagemap']['videoobject'][0]['videoid']
        video_link = "http://y2u.be/#{video_id}"
        reply = "#{video_link} #{first_item['title']}".sub(/\n/, ' ')[0..500]
        response.reply reply
      end

      Lita.register_handler(self)
    end
  end
end
