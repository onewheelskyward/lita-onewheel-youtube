require 'spec_helper'
require 'onewheel-youtube'

describe Lita::Handlers::OnewheelYoutube, lita_handler: true do

  before(:each) do
    mock_result_json = File.open('spec/fixtures/mock_result.json').read
    allow(OnewheelGoogle).to receive(:search).and_return(JSON.parse mock_result_json)

    registry.configure do |config|
      config.handlers.onewheel_google.custom_search_engine_id = ''
      config.handlers.onewheel_google.google_api_key = ''
    end
  end

  it { is_expected.to route_command('google something') }

  it 'does neat googly things' do
    send_command 'google yo'
    expect(replies.last).to eq("https://www.google.com/ Google: Search the world's information, including webpages, images, videos and more.  Google has many special features to help you find exactly what you're looking ...")
  end
end
