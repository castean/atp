class ChangeCodeToProducts < ActiveRecord::Migration
  def change
    change_column :products, :code, :string
  end
end
