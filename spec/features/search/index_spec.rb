require 'rails_helper'

RSpec.describe 'search index page' do
  it 'shows count of members in the house with info for each member', :vcr do
    visit '/'

    select 'Gryffindor', :from => :house

    click_button 'Search For Members'

    expect(current_path).to eq(search_path)

    expect(page).to have_content('41 for Gryffindor')

    expect(page).to have_css('.house-members', count: 41)

    within(first('.house-members')) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".role")
      expect(page).to have_css(".house")
      expect(page).to_not have_css(".patronus")
    end
  end
end
