class AddBirthDateToCandidacies < ActiveRecord::Migration[6.0]
  def change
    add_column :candidacies, :birthdate, :date
  end
end
