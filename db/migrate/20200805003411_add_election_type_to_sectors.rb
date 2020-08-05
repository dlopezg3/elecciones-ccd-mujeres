class AddElectionTypeToSectors < ActiveRecord::Migration[6.0]
  def change
    add_column :sectors, :election_type, :string, default: "Autonóma"
  end
end
