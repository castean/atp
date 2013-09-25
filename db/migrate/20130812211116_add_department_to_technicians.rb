class AddDepartmentToTechnicians < ActiveRecord::Migration
  def change
    add_column :technicians, :department_id, :integer
  end
end
