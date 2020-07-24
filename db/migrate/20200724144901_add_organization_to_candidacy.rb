class AddOrganizationToCandidacy < ActiveRecord::Migration[6.0]
  def change
    add_column :candidacies, :organization, :string
  end
end
