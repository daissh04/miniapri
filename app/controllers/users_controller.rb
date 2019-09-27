class UsersController < ApplicationController
  def show
    @writes = User.where(user_id:current.user_id)
  end
end
