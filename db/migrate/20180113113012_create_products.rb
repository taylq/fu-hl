class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :user_id
      t.decimal :price
      t.string :picture
      t.integer :category_id
      t.datetime :begin_at
      t.datetime :finish_at
      t.boolean :auto_close

      t.timestamps
    end
  end
end
