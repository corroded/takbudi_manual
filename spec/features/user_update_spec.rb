require 'spec_helper'

describe 'user updates account', type: :feature do
  it 'should update the logged in user' do
    user = create :user, email: 'double@rainbow.com', first_name: 'Lady', last_name: 'Rainicorn'
    sign_in_as user

    expect(current_path).to eq(users_dashboard_path)
    expect(page).to have_content('Welcome, Lady')
  end
end
