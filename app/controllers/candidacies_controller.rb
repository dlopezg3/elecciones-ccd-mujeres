class CandidaciesController < ApplicationController

  before_action :set_candidacy, only: %w[show edit update]

  def pundit_user
    current_candidate
  end

  def show
  end

  def new
    @candidacy = Candidacy.new
    authorize @candidacy
  end

  def create
    @candidacy = Candidacy.new(candidacy_params)
    @candidacy.candidate = current_candidate
    authorize @candidacy
    if @candidacy.save
      flash[:notice] = "Tu candidatura ha sido creada con éxito"
      redirect_to candidacy_path(@candidacy)
    else
      flash.now[:alert] = "Por favor corrige los campos con error e intenta nuevamente"
      render 'new'
    end
  rescue ActiveStorage::IntegrityError => e
    flash.now[:alert] = "Uno o varios de los archivos que intenta subir exceden el tamaño permitido. Por favor elija archivos con menos tamaño e intente nuevamente"
    render 'new'
  end

  def edit
  end

  def update
    if @candidacy.update(candidacy_params)
      flash[:notice] = "Tu candidatura ha sido actualizada con éxito"
      redirect_to candidacy_path(@candidacy)
    else
      flash.now[:alert] = "Por favor corrige los campos con error e intenta nuevamente"
      render 'edit'
    end
  rescue ActiveStorage::IntegrityError => e
    flash.now[:alert] = "Uno o varios de los archivos que intenta subir exceden el tamaño permitido. Por favor elija archivos con menos tamaño e intente nuevamente"
    render 'edit'
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
                                   :photo,
                                   :election_minute,
                                   :birthdate,
                                   :rol)
  end

  def set_candidacy
    @candidacy = authorize Candidacy.find(params[:id])
  end
end
