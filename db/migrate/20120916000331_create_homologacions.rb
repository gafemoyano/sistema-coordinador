class CreateHomologacions < ActiveRecord::Migration
  def up
    create_table :homologacions do |t|
      t.text :razon
      t.string :estado
      t.references :estudiante
      t.references :materia
      t.references :coordinador

      t.timestamps
    end
    add_index :homologacions, :estudiante_id
    add_index :homologacions, :materia_id
  end
  
  def down
    drop_table :homologacions
  end
end
