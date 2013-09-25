class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.integer :phone_ext
      t.integer :department_id

      t.timestamps
    end
  end
end
