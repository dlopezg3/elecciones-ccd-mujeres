class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.bigint :voter_tid
      t.references :candidacy, null: false, foreign_key: true
      t.string :voter_email
      t.string :voter_full_name
      t.bigint :voter_phone

      t.timestamps
    end
  end
end
