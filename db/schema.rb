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

ActiveRecord::Schema.define(version: 20161029194319) do

  create_table "cooperatives", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "credit_risks", force: :cascade do |t|
    t.integer  "salario_basico"
    t.integer  "gastos"
    t.text     "entradas_adicionales"
    t.integer  "personas_acargo"
    t.integer  "cooperative_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "credit_risks", ["cooperative_id"], name: "index_credit_risks_on_cooperative_id"

  create_table "users", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "numero",           limit: 10
    t.integer  "tipo_documentp"
    t.integer  "documento",        limit: 10
    t.string   "email",                       null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.integer  "edad"
    t.integer  "cooperative_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["cooperative_id"], name: "index_users_on_cooperative_id"
  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
