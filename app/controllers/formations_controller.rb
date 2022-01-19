class FormationsController < ApplicationController
    def index
    @formations = Formation.all
  end

  def new
    @formation = Formation.new
  end

  def create
    @formation = Formation.new(formation_params)
    @formation.user = current_user
    @formation.save
    redirect_to formations_path
  end

  def edit
    @formation = Formation.find(params[:id])
  end

  def update
    @formation = Formation.find(params[:id])
    @formation.update(formation_params)
    redirect_to formations_path
  end

  def destroy
    @formation = Formation.find(params[:id])
    @formation.destroy
    redirect_to formations_path
  end

  private

  def formation_params
    params.require(:formation).permit(:date, :ecole, :diplome)
  end
end
