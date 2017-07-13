class CreateMarcas < ActiveRecord::Migration
  def change
    create_table :marcas do |t|
      t.string :descripcion
      t.references :modelo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
