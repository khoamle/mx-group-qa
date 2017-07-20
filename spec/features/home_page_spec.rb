require 'rails_helper'

describe 'Home Page' do
  before do
    @home_page = HomePage.new
    @home_page.load
  end

  it 'runs video when I click the play button' do
    @home_page.open_video.play_video.click
    expect(@home_page).to have_video_container
  end

  it 'click on Facebook icon takes me to MX Group facebook page' do
    @home_page.facebook_icon.click
    page.driver.browser.switch_to.window page.driver.browser.window_handles.last do
      expect(@home_page.current_url).to eq('https://www.facebook.com/TheMxGroup/')
    end
  end

  it 'click on Twitter icon takes me to MX Group twitter page' do
    @home_page.twitter_icon.click
    page.driver.browser.switch_to.window page.driver.browser.window_handles.last do
      expect(@home_page.current_url).to eq('https://twitter.com/mxgroup')
    end
  end

  it 'click on LinkedIn icon takes me to MX Group LinkedIn page' do
    @home_page.linkedin_icon.click
    page.driver.browser.switch_to.window page.driver.browser.window_handles.last do
      expect(@home_page.current_url).to eq('https://www.linkedin.com/company/themxgroup')
    end
  end
end
