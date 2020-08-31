class AddCommentToCandidacies < ActiveRecord::Migration[6.0]
  def change
    add_column :candidacies, :comments, :string
  end
end
