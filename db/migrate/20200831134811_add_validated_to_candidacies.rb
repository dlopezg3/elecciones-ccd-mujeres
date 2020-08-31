class AddValidatedToCandidacies < ActiveRecord::Migration[6.0]
  def change
    add_column :candidacies, :validated, :boolean, default: false
  end
end
