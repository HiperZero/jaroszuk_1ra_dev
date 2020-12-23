class Changeid < ActiveRecord::Migration[6.0]
  def change
    rename_column :marcas, :id, :id_marca
    rename_column :tipos, :id, :id_tipo
    rename_column :rubros, :id, :id_rubro
    rename_column :productos, :id, :id_producto
  end
end
