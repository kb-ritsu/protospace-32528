class UsersController < ApplicationController
  before_action :authenticate_user!
  def  show
    @user = User.find(params[:id])
    @prototypes = current_user.prototypes
  end
end
