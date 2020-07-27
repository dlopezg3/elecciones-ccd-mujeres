class CandidaciesController < ApplicationController
  def show
    @candidacy = Candidacy.find(params[:id])
  end

  def new
    @candidacy = Candidacy.new
  end

  def create
    @candidacy = Candidacy.new(candidacy_params)
    @candidacy.candidate = current_candidate
    if @candidacy.save
      flash[:notice] = "Tu candidatura ha sido creada con éxito"
      redirect_to candidacy_path(@candidacy)
    else
      flash.now[:alert] = "Por favor corrige los campos con error e intenta nuevamente"
      render 'new'
    end
  end

  private

  def candidacy_params
    params.require(:candidacy).permit(:organization,
                                   :sector_id,
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
