class CreateProductos < ActiveRecord::Migration[6.0]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.integer :minimo
      t.integer :precio
      t.string :estado
      t.references :marca, null: false, foreign_key: true
      t.references :tipo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
