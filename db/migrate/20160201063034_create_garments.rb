class CreateGarments < ActiveRecord::Migration
  def change
    create_table :garments do |t|
      t.string :garment_name
      t.string :status
      t.string :brand
      t.string :size
      t.money :buy_value
      t.money :sold_value
      t.date :buy_date
      t.date :record_date
      t.integer :user_id
      t.integer :category_id
      t.string :description
      t.string :image

      t.timestamps null: false
    end
  end
end
