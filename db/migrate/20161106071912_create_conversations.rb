class CreateConversations < ActiveRecord::Migration[5.0]
  def change
    create_table :conversations do |t|
      t.integer :sender_id, index: true
      t.integer :receiver_id, index: true
      t.datetime :deleted_at, index: true

      t.timestamps
    end
  end
end
