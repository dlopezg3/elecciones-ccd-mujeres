class AddElectedToCandidacy < ActiveRecord::Migration[6.0]
  def change
    add_column :candidacies, :elected, :boolean, default: false
  end
end
