class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.integer :trackable_id
      t.string :trackable_type
      t.string :notify_type
      t.datetime :deleted_at, index: true

      t.timestamps
    end
  end
end
