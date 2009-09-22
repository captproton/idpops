class LikingsController < ApplicationController
  def new
    @liking = Liking.new
  end
  
  def create
    @liking = Liking.new(params[:liking])
    if @liking.save
      flash[:notice] = "Successfully created liking."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end
end
