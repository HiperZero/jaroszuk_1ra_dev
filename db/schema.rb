# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_23_003322) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "marcas", primary_key: "id_marca", id: :bigint, default: -> { "nextval('marcas_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "productos", primary_key: "id_producto", id: :bigint, default: -> { "nextval('productos_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "nombre"
    t.integer "minimo"
    t.integer "precio"
    t.string "estado"
    t.bigint "marca_id", null: false
    t.bigint "tipo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["marca_id"], name: "index_productos_on_marca_id"
    t.index ["tipo_id"], name: "index_productos_on_tipo_id"
  end

  create_table "rubros", primary_key: "id_rubro", id: :bigint, default: -> { "nextval('rubros_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "nombre"
    t.boolean "perecedero"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tipos", primary_key: "id_tipo", id: :bigint, default: -> { "nextval('tipos_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  add_foreign_key "productos", "marcas", primary_key: "id_marca"
  add_foreign_key "productos", "tipos", primary_key: "id_tipo"
end
