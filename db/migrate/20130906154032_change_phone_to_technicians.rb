class ChangePhoneToTechnicians < ActiveRecord::Migration
  def change
    change_column :technicians, :phone, :string
    change_column :technicians, :nextel, :string
  end
end
