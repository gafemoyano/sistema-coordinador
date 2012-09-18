class CreateInscripcions < ActiveRecord::Migration
  def up
    create_table :inscripcions do |t|
      t.string :estado
      t.references :estudiante
      t.references :inscribible, :polymorphic => true

      t.timestamps
    end
    add_index :inscripcions, :inscribible_id
  end
  def down
    drop_table :inscripcions
  end
end
