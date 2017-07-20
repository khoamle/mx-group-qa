class HomePage < SitePrism::Page
  set_url "/"

  section :open_video, "#open-video" do
    element :play_video, ".play-btn"
  end

  element :video_container, "#videoContainer"

  # section :form_search, '#block-bean-apr-2015-cta-below-essence-shot' do
  #   element :search_field, "input[name='q']"
  #   element :submit_button, "input[type='submit']"
  # end
  #
  # section :search_results, "#search-results" do
  #   element :select_location, '[for=account_2294_building_2121]'
  #   element :submit_button, "input[type='submit']"
  # end
  #
  # section :new_user_form, "#new_user" do
  #   element :first_name, "input[id=user_first_name]"
  #   element :last_name, "input[id=user_last_name]"
  #   element :user_email, "input[id=user_email]"
  #   element :user_password, "input[id=user_password]"
  #   element :user_password_confirm, "input[id=user_password_confirmation]"
  #   element :submit_button, "input[type='submit']"
  # end
end
