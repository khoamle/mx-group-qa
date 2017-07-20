require 'rails_helper'

describe 'Contact Us' do
  before do
    @first_name = Faker::Name.first_name
    @last_name = Faker::Name.last_name
    @email = Faker::Internet.email
    @phone_number = Faker::PhoneNumber.cell_phone
    @company = Faker::Company.name
    @textarea = Faker::Lorem.sentence

    @contact_us_page = ContactUsPage.new
    @contact_us_page.load
  end

  it 'fills out contact us form and submit' do
    @contact_us_page.contact_us_form.first_name.set @first_name
    @contact_us_page.contact_us_form.last_name.set @last_name
    @contact_us_page.contact_us_form.email.set @email
    @contact_us_page.contact_us_form.phone.set @phone_number
    @contact_us_page.contact_us_form.company.set @company
    @contact_us_page.contact_us_form.textarea.set @textarea
    @contact_us_page.contact_us_form.submit_button.click
    sleep(1.5)
    expect(@contact_us_page.current_url).to include "/thanks"
  end
end
