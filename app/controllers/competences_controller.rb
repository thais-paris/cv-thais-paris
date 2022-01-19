class CompetencesController < ApplicationController
  def index
    @competences = Competence.all
  end

  def show
    @competence = Competence.find(params[:id])
  end

  def new
    @competence = Competence.new
  end

  def create
    @competence = Competence.new(competence_params)
    @competence.user = current_user
    @competence.save
    redirect_to competences_path
  end

  def edit
    @competence = Competence.find(params[:id])
  end

  def update
    @competence = Competence.find(params[:id])
    @competence.update(competence_params)
    redirect_to competences_path
  end

  def destroy
    @competence = Competence.find(params[:id])
    # authorize @competence
    @competence.destroy
    redirect_to competences_path
  end

  private

  def competence_params
    params.require(:competence).permit(:titre, :texte)
  end
end
