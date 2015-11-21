class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
    userInstance = User.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    # render :html => userInstance.id

    if userInstance.valid? 
      session[:user_id] = userInstance.id # logging in
      redirect_to '/dashboards'
    else
      flash[:registration_errors] = userInstance.errors.full_messages
      redirect_to '/sessions/new'
    end

  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end
end
