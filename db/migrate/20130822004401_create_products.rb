class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :code
      t.string :name
      t.string :model

      t.timestamps
    end
  end
end
