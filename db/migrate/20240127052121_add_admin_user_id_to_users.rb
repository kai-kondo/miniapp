class AddAdminUserIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :admin_user, null: false, foreign_key: true
  end
end
