class Client < ActiveRecord::Base
  attr_accessible :address, :address_two, :cel_phone, :client_number, :company_name, :contact_name, :email, :last_name, :name, :phone, :second_last_name, :zip_code, :state_id, :city_id
  belongs_to :city
end
