class UserProfilesController < ApplicationController
  def new
    @user_profile = UserProfile.new
  end
  
  def create
    @user_profile = UserProfile.new(params[:user_profile])
    if @user_profile.save
      flash[:notice] = "Successfully created user profile."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end
  
  def edit
    @user_profile = UserProfile.find(params[:id])
  end
  
  def update
    @user_profile = UserProfile.find(params[:id])
    if @user_profile.update_attributes(params[:user_profile])
      flash[:notice] = "Successfully updated user profile."
      redirect_to root_url
    else
      render :action => 'edit'
    end
  end
end
