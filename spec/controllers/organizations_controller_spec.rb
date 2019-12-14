describe OrganizationsController do
  let!(:organization) { create(:organization, slug: 'acme') }

  describe '#show' do
    before { get :show, params: { organization_slug: 'acme' } }

    it { expect(response.status).to eq(200) }
  end
end
