class CreateEstudiantemateria < ActiveRecord::Migration
  def change
    create_table :estudiantemateria do |t|
        t.references :estudiante
        t.references :materia
        t.references :tipo_pensum
        t.string :estado
      t.timestamps
    end
    add_index :estudiantemateria, :estudiante_id
    add_index :estudiantemateria, :materia_id
    add_index :estudiantemateria, :tipo_pensum_id
  end
  def down
    drop table :estudiantemateria
  end
end
