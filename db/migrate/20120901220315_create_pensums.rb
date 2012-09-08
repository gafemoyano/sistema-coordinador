class CreatePensums < ActiveRecord::Migration
  def change
    create_table :pensums do |t|
      t.date :fecha_creacion
      t.string :nombre
      t.references :maestria

      t.timestamps
    end
    add_index :pensums, :maestria_id
  end
end
