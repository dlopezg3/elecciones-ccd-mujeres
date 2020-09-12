class AddOrganiationToVotes < ActiveRecord::Migration[6.0]
  def change
    add_column :votes, :organization, :string
  end
end
