class User < ApplicationRecord
  belongs_to :admin_user, foreign_key: "admin_user_id", optional: true
end
