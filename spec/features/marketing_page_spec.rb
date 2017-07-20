require 'rails_helper'

describe 'Marketing Page' do
  before do
    @marketing_page = MarketingPage.new
    @marketing_page.load
  end

  it 'shows the sales empowerment webpage' do
    @marketing_page.sales.click
    expect(@marketing_page.current_url).to include "/why-mx/sales-empowerment/"
  end

  it 'shows the bottom-line results webpage' do
    @marketing_page.results.click
    expect(@marketing_page.current_url).to include "/why-mx/bottom-line-results/"
  end

  it 'shows the technology expertise webpage' do
    @marketing_page.technology.click
    expect(@marketing_page.current_url).to include "/why-mx/technology-expertise/"
  end
end
