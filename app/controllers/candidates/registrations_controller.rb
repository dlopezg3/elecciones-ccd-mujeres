class Candidates::RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
     edit_candidate_registration_path
  end
end
