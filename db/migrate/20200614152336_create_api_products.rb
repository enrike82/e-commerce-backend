class CreateApiProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :api_products do |t|
      t.string :name, limit: 255, null: false, default: ''

      t.timestamps
    end
    add_index :api_products, :name, unique: true
  end
end
