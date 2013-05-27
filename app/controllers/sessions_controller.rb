class SessionsController < ApplicationController
  
  def new
    
  end
  
  
  def create
    user = User.where(username: params[:username]).first
    
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Welcome bro"
      redirect_to root_path
    else
      flash[:error] = "something is wrong"
      redirect_to new_user_path
    end
  end
  
  def destroy
    session[:user_id] = nil
    flash[:notice] = "You've logged out."
    redirect_to root_path
  end
  
end