class CreateSpareParts < ActiveRecord::Migration
  def change
    create_table :spare_parts do |t|
      t.integer :code
      t.string :name

      t.timestamps
    end
  end
end
