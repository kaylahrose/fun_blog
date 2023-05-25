class StatusesController < ApplicationController
  def new
    @user = User.find(params[:user_id])
  end
  
  def create
    user = User.find(params[:user_id])
    user.statuses.create!(content: params[:content])
    redirect_to user_path(params[:user_id])
  end
end
