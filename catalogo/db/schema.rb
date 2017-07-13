# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170711134202) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categorias", force: :cascade do |t|
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "marcas", force: :cascade do |t|
    t.string   "descripcion"
    t.integer  "modelo_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "marcas", ["modelo_id"], name: "index_marcas_on_modelo_id", using: :btree

  create_table "modelos", force: :cascade do |t|
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "codigo"
    t.string   "descripcion"
    t.decimal  "precio_venta"
    t.integer  "marca_id"
    t.integer  "modelo_id"
    t.integer  "categoria_id"
    t.string   "imagen"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "productos", ["categoria_id"], name: "index_productos_on_categoria_id", using: :btree
  add_index "productos", ["marca_id"], name: "index_productos_on_marca_id", using: :btree
  add_index "productos", ["modelo_id"], name: "index_productos_on_modelo_id", using: :btree

  create_table "productos_detalles", force: :cascade do |t|
    t.decimal  "precio_compra"
    t.date     "fecha_compra"
    t.integer  "proveedor_id"
    t.integer  "producto_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "productos_detalles", ["producto_id"], name: "index_productos_detalles_on_producto_id", using: :btree
  add_index "productos_detalles", ["proveedor_id"], name: "index_productos_detalles_on_proveedor_id", using: :btree

  create_table "proveedores", force: :cascade do |t|
    t.string   "descripcion"
    t.string   "direccion"
    t.string   "sucursal"
    t.string   "vendedor"
    t.string   "telefono"
    t.string   "celular"
    t.string   "email"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "marcas", "modelos"
  add_foreign_key "productos", "categorias"
  add_foreign_key "productos", "marcas"
  add_foreign_key "productos", "modelos"
  add_foreign_key "productos_detalles", "productos"
  add_foreign_key "productos_detalles", "proveedores"
end
