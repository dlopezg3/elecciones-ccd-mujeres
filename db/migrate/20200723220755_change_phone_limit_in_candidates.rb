class ChangePhoneLimitInCandidates < ActiveRecord::Migration[6.0]
  def change
    change_column :candidates, :phone, :integer, limit: 8
    change_column :candidates, :secondary_phone, :integer, limit: 8
  end
end
