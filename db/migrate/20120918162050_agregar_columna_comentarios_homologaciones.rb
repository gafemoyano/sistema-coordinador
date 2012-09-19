class AgregarColumnaComentariosHomologaciones < ActiveRecord::Migration
  def up
        add_column :homologacions, :comentarios, :text
  end

  def down
        remove_column :homologacions, :comentarios

  end
end
