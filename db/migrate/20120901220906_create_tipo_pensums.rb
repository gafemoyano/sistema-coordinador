class CreateTipoPensums < ActiveRecord::Migration
  def up
    create_table :tipo_pensums do |t|
      t.references :pensum
      t.string :descripcion
      t.integer :cantidad

      t.timestamps
    end
    add_index :tipo_pensums, :pensum_id
  end
  
  def down
    drop table :tipo_pensums
  end
end
