class DashboardsController < ApplicationController
  def index
    @user = User.find(session[:user_id])
  end

  def new
  end

  def create
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
