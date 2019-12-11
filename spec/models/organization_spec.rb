require 'rails_helper'

RSpec.describe Organization, type: :model do
  let(:organization) { build(:organization) }

  it 'has many associates' do
    expect(organization.associates).to eq([])
  end

  it 'has many admins' do
    expect(organization.admins).to eq([])
  end
end
