class Candidates::RegistrationsController < Devise::RegistrationsController
  def edit
    @candidate = current_candidate
  end

  def update
    @candidate = current_candidate
    if @candidate.update(candidate_params)
      flash[:notice] = "Tu candidatura ha sido actualizado con éxito"
      redirect_to candidate_path(@candidate)
    else
      flash.now[:alert] = "Por favor corrige los campos con error e intenta nuevamente"
      render 'edit'
    end
  end

  protected

  def after_sign_up_path_for(resource)
     edit_candidate_registration_path
  end

  def candidate_params
    params.require(:candidate).permit(:organization,
                                   :sector,
                                   :name,
                                   :last_name,
                                   :tax_id_number,
                                   :place_of_birth,
                                   :place_of_residence,
                                   :address,
                                   :residence_area_type,
                                   :phone,
                                   :secondary_phone,
                                   :email,
                                   :education_level,
                                   :expertise,
                                   :value_proposition,
                                   :disclaimer,
                                   :document,
                                   :confirmation_letter,
                                   :organization_confirmation_letter,
                                   :photo)
  end
end
