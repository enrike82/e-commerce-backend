class ChangeApiUsers < ActiveRecord::Migration[6.0]
  change_column :api_users, :name, :string, limit: 255, null: false, default: ''
  change_column :api_users, :email, :string, limit: 255, null: false, default: ''
  add_index :api_users, :email, unique: true
end
