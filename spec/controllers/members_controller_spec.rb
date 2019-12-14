describe MembersController do
  let(:organization) { create(:organization, slug: 'acme') }
  let!(:user) { create(:user, first_name: 'Jane', last_name: 'Doe', organization: organization) }

  context 'when the user is not signed in' do
    before { get :info, params: { organization_slug: 'acme' } }

    it 'should redirect to sign in page' do
      expect(response.status).to eq(302)
    end
  end

  describe '#info' do
    before do
      sign_in user
      get :info, params: { organization_slug: 'acme', user_name: 'Jane' }
    end

    it { expect(response.status).to eq(200) }
  end
end
