class AddRolToCandidacies < ActiveRecord::Migration[6.0]
  def change
    add_column :candidacies, :rol, :string
  end
end
