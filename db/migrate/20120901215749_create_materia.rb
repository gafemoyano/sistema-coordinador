class CreateMateria < ActiveRecord::Migration
  def up
    create_table :materia do |t|
      t.references :maestria
      t.string :nombre
      t.string :codigo

      t.timestamps
    end
    add_index :materia, :maestria_id
  end
  
  def down
    drop table :materia
  end
end
