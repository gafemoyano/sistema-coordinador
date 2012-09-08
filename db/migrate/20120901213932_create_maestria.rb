class CreateMaestria < ActiveRecord::Migration
  def change
    create_table :maestria do |t|
      t.string :nombre
      t.string :codigo
      t.references :usuario

      t.timestamps
    end
    add_index :maestria, :usuario_id
  end
end
