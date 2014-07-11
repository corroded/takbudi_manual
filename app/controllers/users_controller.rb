class UsersController < ApplicationController
  respond_to :html, :json

  before_action :authenticate_user!, except: [:new, :create]

  expose(:user, attributes: :user_params)

  def create
    flash[:notice] = "User was created successfully." if user.save
    respond_with(user)
  end

  def dashboard
  end

  def update
    if user.save
      flash[:notice] = 'User was updated successfully'
      redirect_to users_dashboard_path(user)
    else
      flash[:error] = 'There was a problem saving the user'
      render :show
    end
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
      :date_of_birth,
      :password,
      :password_confirmation
    )
  end
end
