class ApplicationController < ActionController::Base
  devise_group :entity, contains: [:candidate, :voter]


  protected

  def after_sign_up_path_for(resource_or_scope)
    edit_candidate_registratio_path
  end
end
