ActiveAdmin.register Candidacy do

  actions :index, :show, :update, :edit
  config.sort_order = 'created_at_desc'

  filter :sector_name, as: :select, collection: -> {Sector.pluck(:name)}, label: "Sector"

  index do
    index_column
    actions dropdown: true do |candidacy|
        admin_candidacy_path(candidacy)
    end

    column :created_at
    column :sector
    column :organization
    column :name
    column :last_name
    column :tax_id_number
    column :place_of_birth
    column :place_of_residence
    column :residence_area_type
    column :phone
    column :secondary_phone
    column :expertise
    column :value_proposition
    column("Foto") { |candidacy| candidacy.cloudinary_url(candidacy.photo) }
    column("Documento de identidad") { |candidacy| candidacy.cloudinary_url(candidacy.document) }
    column("Aval de la organización") { |candidacy| candidacy.cloudinary_url(candidacy.confirmation_letter) }
    column("Certificado de existencia de la organización") { |candidacy| candidacy.cloudinary_url(candidacy.organization_confirmation_letter) }
    column("Carta aceptación sectores autónomos") { |candidacy| candidacy.cloudinary_url(candidacy.autonomus_confirmation_letter) }
  end

  xls(i18n_scope: [:activerecord, :attributes, :candidacy],
      header_format: { weight: :bold, color: :blue }) do

    only_columns :name, :last_name, :organization, :tax_id_number, :place_of_birth, :place_of_residence, :residence_area_type, :phone, :secondary_phone, :expertise, :value_proposition
    column("photo") { |candidacy| candidacy.photo.service_url if candidacy.photo.attached? }
    column("document") { |candidacy| candidacy.document.service_url if candidacy.document.attached? }
    column("confirmation_letter") { |candidacy| candidacy.confirmation_letter.service_url if candidacy.confirmation_letter.attached? }
    column("organization_confirmation_letter") { |candidacy| candidacy.organization_confirmation_letter.service_url if candidacy.organization_confirmation_letter.attached? }
    column("autonomus_confirmation_letter") { |candidacy| candidacy.autonomus_confirmation_letter.service_url if candidacy.autonomus_confirmation_letter.attached? }
  end
end
