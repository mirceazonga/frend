class AddUserIdToFrend1s < ActiveRecord::Migration[7.0]
  def change
    add_column :frend1s, :user_id, :integer
    add_index :frend1s, :user_id
  end
end
