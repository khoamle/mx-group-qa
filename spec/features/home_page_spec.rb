require 'rails_helper'

describe 'Home Page' do
  before do
    @home_page = HomePage.new
    @home_page.load
  end
  it 'runs video when I click the play button' do

    @home_page.open_video.play_video.click
    # debugger
    expect(@home_page).to have_video_container
  end
end
