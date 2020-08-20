class Votation::VotesController < ApplicationController

  before_action :set_candidacy, only: %w[new create edit]
  before_action :set_vote, only: %w[edit]

  def pundit_user
    current_voter
  end

  def new
    @vote = Vote.new
    authorize @vote
  end

  def edit
    authorize @vote
  end

  def create
    @vote = Vote.new(vote_params)
    @vote.candidacy = @candidacy
    authorize @vote
    if @vote.save
      flash[:notice] = "Tu voto se ha registrado con éxito"
      redirect_to votation_sector_candidacy_path(@sector, @candidacy)
    else
      flash.now[:alert] = "Por favor corrige los campos con error e intenta nuevamente"
      render 'edit'
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:voter_tid, :voter_phone, :voter_email, :voter_full_name, :candidacy_id)
  end

  def set_candidacy
    @candidacy = authorize Candidacy.find(params[:candidacy_id])
    @sector = @candidacy.sector
  end

  def set_vote
    @vote = authorize Vote.find(params[:id])
  end
end
