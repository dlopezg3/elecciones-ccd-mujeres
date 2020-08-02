class AddAdminToAdmin < ActiveRecord::Migration[6.0]
  def change
    add_column :admins, :admin, :boolean, default: false
  end
end
