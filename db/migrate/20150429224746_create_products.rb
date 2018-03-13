class CreateProducts < ActiveRecord::Migration::Current
  def change
    create_table :products do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
