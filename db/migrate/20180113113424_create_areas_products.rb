class CreateAreasProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :areas_products do |t|
      t.integer :product_id
      t.integer :area_id

      t.timestamps
    end
  end
end
