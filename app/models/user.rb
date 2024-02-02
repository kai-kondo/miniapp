class User < ApplicationRecord
  belongs_to :admin_user, foreign_key: "admin_user_id"
  validate :check_registration_limit, on: :created
  before_validation :check_user_limit

  private

  def check_user_limit
    if admin_user.present? && admin_user.plan.present?
      max_users = admin_user.plan.max_users

      if admin_user.users.count >= max_users
        errors.add(:base, "ユーザー登録は制限されています。")
        end
    end
  end
end
