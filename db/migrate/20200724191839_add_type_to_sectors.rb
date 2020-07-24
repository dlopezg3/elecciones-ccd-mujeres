class AddTypeToSectors < ActiveRecord::Migration[6.0]
  def change
    add_column :sectors, :org_type, :string
  end
end
