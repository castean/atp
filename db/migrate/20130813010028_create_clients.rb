class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :client_number
      t.string :name
      t.string :last_name
      t.string :second_last_name
      t.string :company_name
      t.string :contact_name
      t.string :address
      t.integer :zip_code
      t.integer :phone
      t.integer :cel_phone
      t.string :email

      t.timestamps
    end
  end
end
