require 'rails_helper'

RSpec.describe User, type: :model do
  let(:organization) { create(:organization) }
  let(:user) { build(:user, organization: organization) }

  it 'belongs to an organization' do
    expect(user.organization_id).to eq(organization.id)
  end
end
