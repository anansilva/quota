require 'rails_helper'

RSpec.describe Admin, type: :model do
  let(:organization) { create(:organization)
  let(:admin) { build(:admin, organization: organization) }

  it 'belongs to an organization' do
    expect(admin.organization_id).to eq(organization.id)
  end
end
