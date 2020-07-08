class CreateFacturas < ActiveRecord::Migration[6.0]
  def change
    create_table :facturas do |t|

      t.timestamps
    end
  end
end
