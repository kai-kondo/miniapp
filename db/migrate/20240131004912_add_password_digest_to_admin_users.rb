class AddPasswordDigestToAdminUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :admin_users, :password_digest, :string, null: false
  end
end
