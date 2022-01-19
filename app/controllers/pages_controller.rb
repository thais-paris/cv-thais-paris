class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @contact = Contact.new
    @competence = Competence.new
    @formation = Formation.new
    @experience = Experience.new
    @user = User.new
  end
end
