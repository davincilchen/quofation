class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.string :name

      t.timestamps
    end

    add_column :products, :inventory_id, :integer
  end
end
