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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120901221438) do

  create_table "estudiantes", :force => true do |t|
    t.integer  "usuario_id"
    t.string   "foto"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "tipo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "estudiantes", ["usuario_id"], :name => "index_estudiantes_on_usuario_id"

  create_table "horarios", :force => true do |t|
    t.date     "dia"
    t.datetime "hora_inicial"
    t.datetime "hora_final"
    t.integer  "materia_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "horarios", ["materia_id"], :name => "index_horarios_on_materia_id"

  create_table "maestria", :force => true do |t|
    t.string   "nombre"
    t.string   "codigo"
    t.integer  "usuario_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "maestria", ["usuario_id"], :name => "index_maestria_on_usuario_id"

  create_table "materia", :force => true do |t|
    t.integer  "maestria_id"
    t.string   "nombre"
    t.string   "codigo"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "materia", ["maestria_id"], :name => "index_materia_on_maestria_id"

  create_table "materias_tipo_pensums", :id => false, :force => true do |t|
    t.integer  "materia_id"
    t.integer  "tipo_pensum_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "pensums", :force => true do |t|
    t.date     "fecha_creacion"
    t.string   "nombre"
    t.integer  "maestria_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "pensums", ["maestria_id"], :name => "index_pensums_on_maestria_id"

  create_table "tipo_pensums", :force => true do |t|
    t.integer  "pensum_id"
    t.string   "descripcion"
    t.integer  "cantidad"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "tipo_pensums", ["pensum_id"], :name => "index_tipo_pensums_on_pensum_id"

  create_table "usuarios", :force => true do |t|
    t.string   "documento"
    t.string   "tipo_documento"
    t.string   "nombres"
    t.string   "apellido"
    t.string   "login"
    t.string   "password"
    t.string   "tipo_usuario"
    t.string   "email"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end