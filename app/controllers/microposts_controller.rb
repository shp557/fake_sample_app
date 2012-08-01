class MicropostsController < ApplicationController
  before_filter :signed_in_user, only: [:new, :create, :destroy]
  before_filter :correct_user,   only: :destroy
  
  def new
  	@micropost = Micropost.new
  end

  def show
  	@microposts = Micropost.all 
  end

  def create
  	@micropost = current_user.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Event posted!"
      redirect_to user_path(current_user)
    else
      render 'new'
    end
  end

  def destroy
  	@micropost.destroy
    redirect_to user_path(current_user)
  end

  private

    def correct_user
      @micropost = current_user.microposts.find_by_id(params[:id])
      redirect_to root_path if @micropost.nil?
    end
end