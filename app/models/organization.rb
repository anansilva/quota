class Organization < ApplicationRecord
  has_many :user_organizations
  has_many :associates, through: :user_organizations, source: :user
  has_many :admin_organizations
  has_many :admins, through: :admin_organizations
end
