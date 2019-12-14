class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :organization
  has_one :subscription

  validates_presence_of :first_name, :last_name

  after_create :create_subscription

  def create_subscription
    Subscription.create(user: self) if subscription.nil?
  end
end
