class ExperiencesController < ApplicationController

  def index
    @experiences = Experience.all
  end

  def show
    @experience = Experience.find(params[:id])
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.user = current_user
    @experience.save
    redirect_to experiences_path
  end

  def edit
    @experience = Experience.find(params[:id])
  end

  def update
    @experience = Experience.find(params[:id])
    @experience.update(experience_params)
    redirect_to experiences_path
  end

  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy
    redirect_to experiences_path
  end

  private

  def experience_params
    params.require(:experience).permit(:post, :entreprise, :date, :description)
  end

end
