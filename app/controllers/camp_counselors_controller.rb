class CampCounselorsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  before_action :set_counselor, only: [:show, :edit, :update, :destroy]
  include CampCounselorsHelper

  def show
    @counselor = Counselor.find(params[:id])
  end

  def new
    @counselor = CampCounselor.new
  end

  def create
    @counselor = CampCounselor.create(counselors_params)
    if @counselors.save 
      session[:user_ud] = @counselor.id
      redirect_to camp_counselor_path(@counselor)
    else 
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy 
  end

  private

  def counselors_params
  end
end