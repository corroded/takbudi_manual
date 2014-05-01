class UsersController < ApplicationController
  respond_to :html, :json

  expose(:user, attributes: :user_params)

  def create
    flash[:notice] = "User was created successfully." if user.save
    respond_with(user)
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :middle_name,
      :last_name,
      :address1,
      :address2,
      :city,
      :state,
      :zip,
      :email,
      :contact_number,
      :gender,
      :shirt_size,
      :date_of_birth
    )
  end
end
