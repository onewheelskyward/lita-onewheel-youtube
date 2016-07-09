lita-onewheel-youtube
--------------------

[![Build Status](https://travis-ci.org/onewheelskyward/lita-onewheel-youtube.png?branch=master)](https://travis-ci.org/onewheelskyward/lita-onewheel-youtube)
[![Coverage Status](https://coveralls.io/repos/onewheelskyward/lita-onewheel-youtube/badge.png)](https://coveralls.io/r/onewheelskyward/lita-onewheel-youtube)

Search the youtubes for the videos.

Installation
------------
Add lita-onewheel-youtube to your Lita instance's Gemfile:

``` ruby
gem "lita-onewheel-youtube"
```

Configuration
-------------

Lita.configure do |config|
  config.handlers.onewheel_images.custom_search_engine_id = '123:xyz'
  config.handlers.onewheel_images.google_api_key = 'A1b2'
  config.handlers.onewheel_images.safe_search = 'medium'  # This is the default setting.  Use 'off' at your own risk.
end

Usage
-----

Well, firstly, Google's API explorer can be a little tricky.


Going Forward
-------------

I'm going to implement postgres and make sure I can track everything I want to track.  Testing the limits of the api calls since I get so few.
