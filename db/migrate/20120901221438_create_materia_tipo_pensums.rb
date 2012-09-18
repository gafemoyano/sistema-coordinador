class CreateMateriaTipoPensums < ActiveRecord::Migration
  def up
     create_table :materia_tipo_pensums, :id=>false do |t|
      t.column :materia_id, :integer
      t.column :tipo_pensum_id, :integer

      t.timestamps
      end
  end

  def down
    drop table :materias_tipo_pensums
  end

end
