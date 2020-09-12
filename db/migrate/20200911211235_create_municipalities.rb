class CreateMunicipalities < ActiveRecord::Migration[6.0]
  def change
    create_table :municipalities do |t|
      t.string :name
      t.string :subregion

      t.timestamps
    end
  end
end
