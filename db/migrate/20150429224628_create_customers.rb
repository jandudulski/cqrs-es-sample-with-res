class CreateCustomers < ActiveRecord::Migration::Current
  def change
    create_table :customers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
