class Technician < ActiveRecord::Base
  attr_accessible :email, :name, :nextel, :phone

  belongs_to :department
end
