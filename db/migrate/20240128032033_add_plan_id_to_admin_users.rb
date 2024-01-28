class AddPlanIdToAdminUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :admin_users, :plan_id, :integer
  end
end
