class CreateSupports < ActiveRecord::Migration
  def change
    create_table :supports do |t|
      t.integer :issue_type_id
      t.integer :user_id
      t.integer :client_id
      t.integer :technician_id
      t.string :support
      t.text :issue
      t.text :solution

      t.timestamps
    end
  end
end
