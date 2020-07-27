require 'rails_helper'
require 'rspec/rails'
RSpec.feature 'User view apartments' do
  fixtures :apartments

  scenario 'apartments are present' do
    apartment = apartments(:apartment)
    visit '/spec/fixtures/apartments.yml'

    expect(page).to have_text(apartment.full_address)
    expect(page).to have_text(apartment.description)
    expect(page).to have_text(apartment.bedrooms)
    expect(page).to have_text(apartment.latitude)
    expect(page).to have_text(apartment.longitude)
    expect(page).to have_text(apartment.price)
    expect(page).to have_text(apartment.sprinkler_check_at)
    expect(page).to have_text(apartment.check_in_at)
    expect(page).to have_text(apartment.available_from)
    expect(page).to have_text(apartment.fireplace)
  end
end
