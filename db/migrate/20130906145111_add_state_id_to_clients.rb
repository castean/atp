class AddStateIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :state_id, :integer
    add_column :clients, :city_id, :integer
    change_column :clients, :phone, :string
  end
end
