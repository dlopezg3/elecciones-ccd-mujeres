ActiveAdmin.register Vote do

  actions :index, :show, :update, :edit, :destroy
  config.sort_order = 'created_at_desc'

  filter :voter_full_name
  filter :voter_tid
  filter :candidacy, label: "Candidata"
  filter :municipality_name,  as:  :select,  collection:  -> {Municipality.pluck(:name)},  label: "Municipio"
  filter :sector_name, as: :select, collection: -> {Sector.pluck(:name)}, label: "Sector"

  index do
    index_column
    column :voter_tid
    column :candidacy
    column :voter_email
    column :voter_full_name
    column :voter_phone
    column :sector
    column :municipality
    column :organization
    column :document_expedition
    actions
  end

  xls(i18n_scope: [:activerecord, :attributes, :candidacy],
      header_format: { weight: :bold }) do

    only_columns :voter_tid, :voter_email, :voter_full_name, :voter_phone, :organization, :document_expedition
    column("sector") { |vote| vote.sector.name }
    column("municipality") { |vote| vote.sector.name }
    column("candidacy") { |vote| vote.candidacy.name }
    column("candidate_id") { |vote| vote.candidacy.tax_id_number }
  end

  permit_params do
    permitted = [ :name, :last_name, :tax_id_number, :place_of_birth,
                  :place_of_residence, :address, :residence_area_type,
                  :phone, :secondary_phone, :education_level, :expertise,
                  :value_proposition, :organization, :validated, :comments, :photo,
                  :sector_id, :document, :confirmation_letter, :organization_confirmation_letter,
                  :autonomus_confirmation_letter, :election_minute, :rol, :birthdate]
  end
end
