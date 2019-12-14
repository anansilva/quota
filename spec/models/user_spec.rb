require 'rails_helper'

RSpec.describe User, type: :model do
  let(:organization) { create(:organization) }
  let(:user) { build(:user, organization: organization) }

  it 'belongs to an organization' do
    expect(user.organization_id).to eq(organization.id)
  end

  it 'is not valid without a first name and last name' do
    expect(user.valid?).to eq(false)
  end

  it 'is not valid with a first name but without a last name' do
    user.first_name = 'Jane'

    expect(user.valid?).to eq(false)
  end

  it 'is not with a last name but without a first name' do
    user.first_name = 'Jane'

    expect(user.valid?).to eq(false)
  end

  it 'is valid with a first and last name' do
    user.first_name = 'Jane'
    user.last_name = 'Doe'

    expect(user.valid?).to eq(true)
  end
end
