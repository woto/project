class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.references :owner

      t.timestamps
    end
    add_index :tasks, :owner_id
  end
end
