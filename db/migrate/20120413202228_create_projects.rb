class CreateProjects < ActiveRecord::Migration
  def up
    change_table :projects do |t|
      t.string :name
      t.has_attached_file :thumbnail
    end
  end

  def down
    drop_attached_file :projects, :thumbnail 
    remove_column :projects, :name
  end

  def change
    create_table :projects do |t|
        t.string :name
        t.has_attached_file :thumbnail
    end
  end
end
