class Votation::VotesController < ApplicationController

  before_action :set_candidacy, only: %w[new create edit]
  before_action :set_vote, only: %w[edit]
  before_action :set_municipalities, only: %w[new create]
  before_action :set_sectors, only: %w[new create]

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
      flash[:notice] = "Su voto se ha registrado con éxito"
      redirect_to vote_confirmation_path
    else
      flash.now[:alert] = "Por favor corrija los campos con error e intente nuevamente"
      render 'new'
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:voter_tid, :voter_phone, :voter_email,
                                 :voter_full_name, :candidacy_id, :municipality_id,
                                 :sector_id, :organization)
  end

  def set_candidacy
    @candidacy = authorize Candidacy.find(params[:candidacy_id])
    @sector = @candidacy.sector
  end

  def set_vote
    @vote = authorize Vote.find(params[:id])
  end

  def set_municipalities
    @municipalities = Municipality.all.sort_by(&:name)
  end

  def set_sectors
    @sectors = Sector.where(org_type: "Popular").sort_by(&:name)
  end
end
