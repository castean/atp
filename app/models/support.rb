class Support < ActiveRecord::Base
  attr_accessible :client_id, :issue, :issue_type_id, :solution, :support, :technician_id, :user_id
  belongs_to :issue_type
  belongs_to :client
end
