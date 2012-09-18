class AddColumnCoordinadorToMaestria < ActiveRecord::Migration
  def up
    add_column :maestria, :coordinador_id, :integer
  end

  def down
    remove_column :maestria, :coordinador_id
  end
end
