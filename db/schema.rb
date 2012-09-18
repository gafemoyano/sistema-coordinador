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

ActiveRecord::Schema.define(:version => 20120917213552) do

  create_table "coordinadors", :force => true do |t|
    t.string   "documento"
    t.string   "tipo_documento"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "login"
    t.string   "password"
    t.string   "email"
    t.integer  "usuario_id"
    t.integer  "maestria_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "estudiantemaestria", :force => true do |t|
    t.integer  "estudiante_id"
    t.integer  "maestria_id"
    t.integer  "pensum_id"
    t.string   "estado"
    t.string   "carpeta"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "estudiantemaestria", ["estudiante_id"], :name => "index_estudiantemaestria_on_estudiante_id"
  add_index "estudiantemaestria", ["maestria_id"], :name => "index_estudiantemaestria_on_maestria_id"
  add_index "estudiantemaestria", ["pensum_id"], :name => "index_estudiantemaestria_on_pensum_id"

  create_table "estudiantemateria", :force => true do |t|
    t.integer  "estudiante_id"
    t.integer  "materia_id"
    t.integer  "tipo_pensum_id"
    t.string   "estado"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "estudiantemateria", ["estudiante_id"], :name => "index_estudiantemateria_on_estudiante_id"
  add_index "estudiantemateria", ["materia_id"], :name => "index_estudiantemateria_on_materia_id"
  add_index "estudiantemateria", ["tipo_pensum_id"], :name => "index_estudiantemateria_on_tipo_pensum_id"

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

  create_table "homologacions", :force => true do |t|
    t.text     "razon"
    t.string   "estado"
    t.integer  "estudiante_id"
    t.integer  "materia_id"
    t.integer  "coordinador_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "homologacions", ["estudiante_id"], :name => "index_homologacions_on_estudiante_id"
  add_index "homologacions", ["materia_id"], :name => "index_homologacions_on_materia_id"

  create_table "horarios", :force => true do |t|
    t.date     "dia"
    t.datetime "hora_inicial"
    t.datetime "hora_final"
    t.integer  "materia_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "horarios", ["materia_id"], :name => "index_horarios_on_materia_id"

  create_table "inscripcions", :force => true do |t|
    t.string   "estado"
    t.integer  "estudiante_id"
    t.integer  "inscribible_id"
    t.string   "inscribible_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "inscripcions", ["inscribible_id"], :name => "index_inscripcions_on_inscribible_id"

  create_table "maestria", :force => true do |t|
    t.string   "nombre"
    t.string   "codigo"
    t.integer  "usuario_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "coordinador_id"
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

  create_table "materia_tipo_pensums", :id => false, :force => true do |t|
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
