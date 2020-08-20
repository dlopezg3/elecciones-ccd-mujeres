class Votation::Sectors::CandidaciesController < ApplicationController
  skip_after_action :verify_authorized, only: :show
  skip_after_action :verify_policy_scoped, only: :index
  before_action :set_sector, only: :index

  def index
    @candidacies = Candidacy.where(sector: @sector)
  end

  def show
    @candidacy = Candidacy.find(params[:id])
  end

  def set_sector
    @sector = Sector.find(params[:sector_id])
  end
end
