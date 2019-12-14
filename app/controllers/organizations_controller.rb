class OrganizationsController < ApplicationController
  def show
    @organization = Organization.find_by(slug: params[:organization_slug])
  end
end
