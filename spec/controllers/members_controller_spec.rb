describe MembersController do
  let!(:organization) { create(:organization, slug: 'acme') }
  let!(:user) { create(:user, name: 'acme') }

  describe '#info' do
    before { get :info, params: { slug: 'acme' } }

    it { expect(response.status).to eq(200) }
  end
end
