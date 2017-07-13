class CreateProveedores < ActiveRecord::Migration
  def change
    create_table :proveedores do |t|
      t.string :descripcion
      t.string :direccion
      t.string :sucursal
      t.string :vendedor
      t.string :telefono
      t.string :celular
      t.string :email

      t.timestamps null: false
    end
  end
end
