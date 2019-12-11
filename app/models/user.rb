class User < ApplicationRecord
  has_many :user_organizations, dependent: :destroy
  has_many :organizations, through: :user_organizations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
