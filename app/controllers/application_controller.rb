class ApplicationController < ActionController::Base
  devise_group :entity, contains: [:candidate, :voter]


  protected

  def after_sign_up_path_for(resource_or_scope)
    welcome_index_path
  end

  def devise_parameter_sanitizer
    if resource_class == Candidate
      Candidates::ParamaterSanitizerController.new(Candidate, :candidate, params)
    else
      super # Use the default one
    end
  end

end
