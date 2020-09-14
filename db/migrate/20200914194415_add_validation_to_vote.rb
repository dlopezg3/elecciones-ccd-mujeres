class AddValidationToVote < ActiveRecord::Migration[6.0]
  def change
    add_column :votes, :document_expedition, :date
  end
end
