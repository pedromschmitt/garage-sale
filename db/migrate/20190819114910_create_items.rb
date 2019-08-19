class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price_new
      t.decimal :price_sale
      t.integer :status
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
