class UsersController < ApplicationController
  def show
    @writes = Write.where(user_id: current_user.id).order("created_at DESC").page(params[:page]).per(2)
  end
end
