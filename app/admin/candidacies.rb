ActiveAdmin.register Candidacy do

  actions :index, :show, :update, :edit, :destroy
  config.sort_order = 'created_at_desc'

  filter :name
  filter :last_name
  filter :validated
  filter :sector_name, as: :select, collection: -> {Sector.pluck(:name)}, label: "Sector"
  filter :candidate_email, as: :string, label: "Email"

  index do
    index_column
    column :created_at
    column :sector
    column :organization
    column :name
    column :last_name
    column("Email") { |candidacy| candidacy.candidate }
    column :tax_id_number
    column :place_of_birth
    column :place_of_residence
    column :residence_area_type
    column :phone
    column :secondary_phone
    column("Foto") { |candidacy| candidacy.cloudinary_url(candidacy.photo) }
    column("Documento de identidad") { |candidacy| candidacy.cloudinary_url(candidacy.document) }
    column("Aval de la organización") { |candidacy| candidacy.cloudinary_url(candidacy.confirmation_letter) }
    column("Certificado de existencia de la organización") { |candidacy| candidacy.cloudinary_url(candidacy.organization_confirmation_letter) }
    column("Carta aceptación sectores autónomos") { |candidacy| candidacy.cloudinary_url(candidacy.autonomus_confirmation_letter) }
    column :validated
    column :comments
    actions
  end

  form partial: 'form'

  xls(i18n_scope: [:activerecord, :attributes, :candidacy],
      header_format: { weight: :bold }) do

    only_columns :name, :last_name, :organization, :tax_id_number, :place_of_birth, :place_of_residence, :residence_area_type, :phone, :secondary_phone, :expertise, :value_proposition, :validated, :comments
    column("sector") { |candidacy| candidacy.sector.name }
    column("email") { |candidacy| candidacy.candidate.email }
    column("photo") { |candidacy| candidacy.photo.service_url if candidacy.photo.attached? }
    column("document") { |candidacy| candidacy.document.service_url if candidacy.document.attached? }
    column("confirmation_letter") { |candidacy| candidacy.confirmation_letter.service_url if candidacy.confirmation_letter.attached? }
    column("organization_confirmation_letter") { |candidacy| candidacy.organization_confirmation_letter.service_url if candidacy.organization_confirmation_letter.attached? }
    column("autonomus_confirmation_letter") { |candidacy| candidacy.autonomus_confirmation_letter.service_url if candidacy.autonomus_confirmation_letter.attached? }
  end

  permit_params do
    permitted = [ :name, :last_name, :tax_id_number, :place_of_birth,
                  :place_of_residence, :address, :residence_area_type,
                  :phone, :secondary_phone, :education_level, :expertise,
                  :value_proposition, :organization, :validated, :comments, :photo ]
  end
end
