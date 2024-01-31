class AdminUser < ApplicationRecord
  belongs_to :plan, optional: true
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
