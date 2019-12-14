RSpec.describe Organization, type: :model do
  let(:organization) { build(:organization) }

  it 'has many members' do
    expect(organization.members).to eq([])
  end

  it 'has many admins' do
    expect(organization.admins).to eq([])
  end
end
