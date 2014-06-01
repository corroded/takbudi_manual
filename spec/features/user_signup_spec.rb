require 'spec_helper'

describe 'user signup process', type: :feature do
  it 'should create a new user' do
    visit '/users/sign_up'
    fill_in 'First name', with: 'Finn'
    fill_in 'Middle name', with: 'the'
    fill_in 'Last name', with: 'Human'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    choose 'Male'

    fill_in 'Email', with: 'adventure@time.com'
    fill_in 'Address 1', with: 'Tree Fort'
    click_button 'Create Profile'

    expect(current_path).to eq(users_dashboard_path)
    expect(page).to have_content('You have signed up successfully')
  end

  context 'when an existing user logs back in' do
    it 'should show the dashboard and welcome the user back' do
      yosemite = create :user, first_name: 'Yosemite', last_name: 'Bear'
      sign_in_as_user yosemite

      expect(current_path).to eq(users_dashboard_path)
      expect(page).to have_content('Welcome, Yosemite')
    end
  end
end
