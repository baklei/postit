class UsersController < ApplicationController
   def new
     @user = User.new
   end
   
   def create
     @user = User.new(params[:user])
   if @user.save
     flash[:notice] = "Username Created"
     redirect_to root_path
   else
     render :new
   end
 end
end