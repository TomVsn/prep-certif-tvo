class CreateFlats < ActiveRecord::Migration[6.1]
  def change
    create_table :flats do |t|
      t.string :name
      t.text :description
      t.string :address
      t.integer :price
      t.string :category
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
