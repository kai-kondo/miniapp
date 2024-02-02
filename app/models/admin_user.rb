class AdminUser < ApplicationRecord
  has_many :users, dependent: :destroy
  belongs_to :plan
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
