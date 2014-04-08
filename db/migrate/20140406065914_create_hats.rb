class CreateHats < ActiveRecord::Migration
  def change
    create_table :hats do |t|
      t.string :name
      t.string :image
      t.decimal :price, precision: 8, scale: 2
      t.text :description

      t.timestamps
    end
  end
end
