class CreateCoordinadors < ActiveRecord::Migration
  def up
    create_table :coordinadors do |t|
      t.string :documento
      t.string :tipo_documento
      t.string :nombre
      t.string :apellido
      t.string :login
      t.string :password
      t.string :email
      
      t.references :usuario
      t.references :maestria
      t.timestamps
    end
  end
  
  def down
    drop table :coordinadors
  end
end
