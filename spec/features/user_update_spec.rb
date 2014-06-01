require 'spec_helper'

describe 'user updates account', type: :feature do
  it 'should update the logged in user' do
    sign_in_as_user

    click_link 'Update Profile'
    fill_in 'First name', with: 'Finn'
    fill_in 'Last name', with: 'the Human'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Save'

    expect(current_path).to eq(edit_user_path(@user))
    expect(page).to have_content('Successfully saved changes')
  end
end
