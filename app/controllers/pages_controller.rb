class PagesController < ApplicationController
  skip_before_action :authenticate!, only: [:home, :confirmation]

  def home
  end

  def vote_confirmation
  end
end
