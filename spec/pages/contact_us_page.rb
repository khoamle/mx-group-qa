class ContactUsPage < SitePrism::Page
  set_url "/contact-us/"

  section :contact_us_form, '#mktoForm_1031' do
    element :first_name, "input[id=FirstName]"
    element :last_name, "input[id=LastName]"
    element :email, "input[id=Email]"
    element :phone, "input[id=Phone]"
    element :company, "input[id=Company]"
    element :textarea, "textarea[id=message]"
    element :submit_button, "button[type=submit]"
  end
end
