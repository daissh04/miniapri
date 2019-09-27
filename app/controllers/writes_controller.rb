class WritesController < ApplicationController

  def index
    @writes = Write.all.order("created_at DESC").page(params[:page]).per(2)
  end

  def new
  end

  def create
    Write.create(text:params[:text],user_id:1)
  end

  def destroy
   write = Write.find(params[:id])
   write.destroy
  end

  def edit
    @write = Write.find(params[:id])
  end

  def update
    write = Write.find(params[:id])
    Write.update(write_params)
  end

  def write_params
  params.permit(:text).merge(user_id:1)
  end
end
