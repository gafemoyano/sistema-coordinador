class CreateCoordinadors < ActiveRecord::Migration
  def up
    create_table :coordinadors do |t|
      t.references :usuario
      t.timestamps
    end
  end
  
  def down
    drop table :coordinadors
  end
end
