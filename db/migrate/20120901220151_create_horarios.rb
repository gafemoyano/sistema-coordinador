class CreateHorarios < ActiveRecord::Migration
  def change
    create_table :horarios do |t|
      t.date :dia
      t.datetime :hora_inicial
      t.datetime :hora_final
      t.references :materia

      t.timestamps
    end
    add_index :horarios, :materia_id
  end
end
