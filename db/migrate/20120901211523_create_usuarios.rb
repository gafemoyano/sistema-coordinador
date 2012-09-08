class CreateUsuarios < ActiveRecord::Migration
  def up
    create_table :usuarios do |t|
      t.string :documento
      t.string :tipo_documento
      t.string :nombres
      t.string :apellido
      t.string :login
      t.string :password
      t.string :tipo_usuario
      t.string :email

      t.timestamps
    end
  end
  def down
    drop table :usuarios
  end
end
