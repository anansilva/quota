class AddOrganizationToAdmins < ActiveRecord::Migration[6.0]
  def change
    add_reference :admins, :organization, index: true
  end
end
