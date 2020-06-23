class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  include SessionsHelper

  def new
    @counselor = CampCounselor.new
  end 

  def create
    signin_logic
  end

  def destroy
    session.delete :user_id
    render :new
  end 


  private

  def auth
    auth = request.env['omniauth.auth']
  end 

end 