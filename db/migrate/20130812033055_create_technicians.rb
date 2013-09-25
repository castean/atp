class CreateTechnicians < ActiveRecord::Migration
  def change
    create_table :technicians do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.integer :nextel

      t.timestamps
    end
  end
end
