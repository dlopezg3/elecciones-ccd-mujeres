class AddColumnsToCandidate < ActiveRecord::Migration[6.0]
  def change
    add_reference :candidates, :organization, foreign_key: true
    add_reference :candidates, :sector, foreign_key: true
    add_column :candidates, :name, :string
    add_column :candidates, :last_name, :string
    add_column :candidates, :tax_id_number, :integer
    add_column :candidates, :place_of_birth, :string
    add_column :candidates, :place_of_residence, :string
    add_column :candidates, :address, :string
    add_column :candidates, :residence_area_type, :integer
    add_column :candidates, :phone, :integer
    add_column :candidates, :secondary_phone, :integer
    add_column :candidates, :education_level, :integer
    add_column :candidates, :expertise, :string
    add_column :candidates, :value_proposition, :string
    add_column :candidates, :disclaimer, :boolean
  end
end
