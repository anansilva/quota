class CreateUserOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :user_organizations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true

      t.timestamps
      t.index ["user_id", "organization_id"], name: "index_user_organizations_on_user_id_organization_id"
    end
  end
end
