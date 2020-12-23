class CreateRubros < ActiveRecord::Migration[6.0]
  def change
    create_table :rubros do |t|
      t.string :nombre
      t.boolean :perecedero

      t.timestamps
    end
  end
end
