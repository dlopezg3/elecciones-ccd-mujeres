class CreateCandidacies < ActiveRecord::Migration[6.0]
  def change
    create_table :candidacies do |t|
      t.references :candidate, null: false, foreign_key: true
      t.references :sector, null: false, foreign_key: true
      t.string      :name
      t.string      :last_name
      t.integer     :tax_id_number, limit: 8
      t.string      :place_of_birth
      t.string      :place_of_residence
      t.string      :address
      t.string      :residence_area_type
      t.integer     :phone, limit: 8
      t.integer     :secondary_phone, limit: 8
      t.string      :education_level
      t.string      :expertise
      t.string      :value_proposition
      t.boolean     :disclaimer

      t.timestamps
    end
  end
end
