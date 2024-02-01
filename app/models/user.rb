class User < ApplicationRecord
  belongs_to :admin_user, foreign_key: "admin_user_id"
  belongs_to :plan

  validate :check_registration_limit, on: :created

  private

  def check_registration_limit
    if admin_user.present? && plan.present?
      max_users = plan.max_users

      if admin_user.users.count >= max_users
        errors.add(:base, "ユーザー登録は制限されています。")
      end
    end
  end
end
