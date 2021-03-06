class SessionsController < ApplicationController
  #
  # def create
  #   @user = User.find_by(name: params[:username])
  #   return head(:forbidden) unless @user.authenticate(params[:password])
  #   session[:user_id] = @user.id
  # end
  def create
    @user = User.find_by(name: params[:user][:name])
    return head(:forbidden) unless @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
  end
end
