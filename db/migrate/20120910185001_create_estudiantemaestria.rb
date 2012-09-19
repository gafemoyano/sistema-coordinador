class CreateEstudiantemaestria < ActiveRecord::Migration
  def change
    create_table :estudiantemaestria do |t|
        t.references :estudiante
        t.references :maestria
        t.references :pensum
        t.string :estado
        t.string :carpeta
      t.timestamps
    end
    add_index :estudiantemaestria, :estudiante_id
    add_index :estudiantemaestria, :maestria_id
    add_index :estudiantemaestria, :pensum_id
  end
  def down
    drop table :estudiantemaestria
  end
end
