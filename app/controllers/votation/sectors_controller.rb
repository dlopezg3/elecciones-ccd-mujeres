class Votation::SectorsController < ApplicationController

  def pundit_user
    current_voter
  end

  def index
    @sectors = policy_scope([:votation, Sector.all])
  end
end
