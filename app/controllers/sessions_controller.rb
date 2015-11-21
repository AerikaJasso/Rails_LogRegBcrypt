class SessionsController < ApplicationController
  def index
  end

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id 
      redirect_to '/dashboards'
    else
      flash[:login_errors] = "GTFO!"
      redirect_to '/sessions/new'
    end  
    # if user # if user exists...
    #   # lets check to see if password matches
    #   if user.authenticate(params[:password]) # if it does match...
    #     session[:user_id] = user.id # session the user id
    #     redirect_to '/dashboards' # redirect to dashboard
    #   else # otherwise...
    #     flash[:login_errors] = "GTFO" # flash GTFO
    #     redirect_to '/sessions/new' # redirect to login/reg page
    #   end
    # else # if user does not exist...
    #   # lets send them a message
    #   flash[:login_errors] = "GTFO"
    #   # and redirect to the login/reg page
    #   redirect_to '/sessions/new'
    # end 
    # # render :html => user.inspect
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
    reset_session
    redirect_to '/sessions/new'
  end
end
