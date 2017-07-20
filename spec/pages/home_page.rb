class HomePage < SitePrism::Page
  set_url "/"

  section :open_video, "#open-video" do
    element :play_video, ".play-btn"
  end
  element :video_container, "#videoContainer"

  element :facebook_icon, "a[title=Facebook]"
  element :twitter_icon, "a[title=Twitter]"
  element :linkedin_icon, "a[title=LinkedIn]"


end
