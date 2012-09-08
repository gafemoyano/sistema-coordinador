class CreateEstudiantes < ActiveRecord::Migration
  def up
    create_table :estudiantes do |t|
      t.references :usuario
      t.string :foto
      t.string :direccion
      t.string :telefono
      t.string :tipo

      t.timestamps
    end
    add_index :estudiantes, :usuario_id
  end
  def down
    drop table :estudiantes
  end
end
