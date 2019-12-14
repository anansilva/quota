class MembersController < ApplicationController
  before_action :authenticate_user!

  def info
  end
end
