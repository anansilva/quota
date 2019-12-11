class AdminOrganization < ApplicationRecord
  belongs_to :admin
  belongs_to :organization
end
