class CreateListItems < ActiveRecord::Migration
  def self.up
    create_table :list_items do |t|
      t.string :name
      t.integer :list_id
      t.text :description
      t.datetime :due_at
      t.integer :created_by
      t.integer :updated_by
      t.datetime :completed_at
      t.integer :completed_by

      t.timestamps
    end
  end

  def self.down
    drop_table :list_items
  end
end
