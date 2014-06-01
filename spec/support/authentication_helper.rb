module AuthenticationHelper
  def sign_in_as_user(user=nil)
    @user = if user.nil?
              create :user, email: 'double@rainbow.com', first_name: 'Lady', last_name: 'Rainicorn'
            else
              user
            end
    visit '/users/sign_in'
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Sign in'
  end
end
