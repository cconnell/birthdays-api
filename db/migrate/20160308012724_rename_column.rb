class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :people, :bio, :gift
  end
end
