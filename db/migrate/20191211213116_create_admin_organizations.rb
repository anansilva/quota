class CreateAdminOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :admin_organizations do |t|
      t.references :admin, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true

      t.timestamps
      t.index ["admin_id", "organization_id"], name: "index_admin_organizations_on_admin_id_organization_id"
    end
  end
end
