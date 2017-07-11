class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :codigo
      t.string :descripcion
      t.decimal :precio_venta
      t.references :marca, index: true, foreign_key: true
      t.references :modelo, index: true, foreign_key: true
      t.references :categoria, index: true, foreign_key: true
      t.string :imagen

      t.timestamps null: false
    end
  end
end
