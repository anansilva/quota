class Organization < ApplicationRecord
  has_many :members, foreign_key: 'user_id', class_name: 'User'
  has_many :admins
end
