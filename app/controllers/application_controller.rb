class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery

  devise_group :entity, contains: [:candidate, :voter]

  before_action :authenticate!, except: [:sessions, :registrations, :passwords]

  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def user_not_authorized
    flash[:alert] = "No estás authorizado para realizar esta acción"
    if current_candidate
      redirect_back fallback_location: candidacy_path(current_candidate.candidacy)
    else
      redirect_back fallback_location: root_path
    end
  end

  def authenticate!
    if current_entity == current_admin
      :authenticate_user_admin!
    elsif current_entity == current_candidate
      :authenticate_candidate!
    end
  end

  protected

  def after_sign_in_path_for(resource_or_scope)
    if resource_or_scope.instance_of? Candidate
      candidacy_path(current_candidate.candidacy) unless current_candidate.candidacy.nil?
      new_candidacy_path
    else
      super
    end
  end

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
