class SessionsController < ApplicationController
  def create
    email = params[:email]
    password = params[:password]

    user = User.find_by(email: email)

    if user && user.valid_password?(password)
      sign_in(user)
      redirect_to root_path
    else
      flash.now[:alert] = "Invalid email or password"
      render :new
    end
  end
end