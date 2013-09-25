class Seller < ActiveRecord::Base
  attr_accessible :department_id, :email, :name, :phone, :phone_ext
end
