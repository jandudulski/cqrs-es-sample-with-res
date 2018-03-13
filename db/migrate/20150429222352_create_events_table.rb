class CreateEventsTable < ActiveRecord::Migration::Current

  def self.up
    create_table(:event_store_events) do |t|
      t.string      :stream,      null: false
      t.string      :event_type,  null: false
      t.string      :event_id,    null: false
      t.text        :metadata
      t.text        :data,        null: false
      t.timestamps
    end
    add_index :event_store_events, :stream
    add_index :event_store_events, :event_id
  end

  def self.down
    drop_table :event_store_events
  end
end
