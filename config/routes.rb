Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  scope ':organization_slug' do
    get '/', to: 'organizations#show', as: :landing_page
  end
end
