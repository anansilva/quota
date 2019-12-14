class DropAdminOrganizations < ActiveRecord::Migration[6.0]
  def change
    drop_table :admin_organizations
  end
end
