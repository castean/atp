class AddAddresstwoToClients < ActiveRecord::Migration
  def change
    add_column :clients, :address_two, :string
  end
end
