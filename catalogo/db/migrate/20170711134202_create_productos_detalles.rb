class CreateProductosDetalles < ActiveRecord::Migration
  def change
    create_table :productos_detalles do |t|
      t.decimal :precio_compra
      t.date :fecha_compra
      t.references :proveedor, index: true, foreign_key: true
      t.references :producto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
