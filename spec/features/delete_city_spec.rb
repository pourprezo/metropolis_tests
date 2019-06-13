# spec/features/delete_city_spec.rb

require 'rails_helper'

RSpec.describe 'Delete a city', type: :feature do
  scenario 'Success' do
    qro = City.create!(name: 'Queretaro')
    visit cities_path
    expect(page).to have_content('Queretaro')
    click_on 'Destroy'
    expect(page).not_to have_content('Queretaro')
  end
end
