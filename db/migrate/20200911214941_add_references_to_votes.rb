class AddReferencesToVotes < ActiveRecord::Migration[6.0]
  def change
    add_reference :votes, :sector, null: false, foreign_key: true
    add_reference :votes, :municipality, null: false, foreign_key: true
  end
end
