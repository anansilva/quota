require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  it 'has many organizations' do
    expect(user.organizations).to eq([])
  end
end
