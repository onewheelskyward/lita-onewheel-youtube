require 'spec_helper'
require 'onewheel-google'

describe Lita::Handlers::OnewheelYoutube, lita_handler: true do

  before(:each) do
    mock_result_json = File.open('spec/fixtures/mock_result.json').read
    allow(OnewheelGoogle).to receive(:search).and_return(JSON.parse mock_result_json)

    registry.configure do |config|
      config.handlers.onewheel_youtube.custom_search_engine_id = ''
      config.handlers.onewheel_youtube.google_api_key = ''
    end
  end

  it { is_expected.to route_command('youtube something') }
  it { is_expected.to route_command('y something') }
  it { is_expected.to route_command('yt something') }

  it 'does neat youtubey things' do
    send_command 'youtube sledgehammer'
    expect(replies.last).to eq("http://y2u.be/gCJ3rmiZFr8 Fifth Harmony - Sledgehammer - YouTube")
  end
end
