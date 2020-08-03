class AdminController < ApplicationController

  def pundit_user
    current_admin
  end
end
