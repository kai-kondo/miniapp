class AdminUser < ApplicationRecord
  belongs_to :plan, optional: true
end
