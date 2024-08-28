class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

   enum role: { donor: 'donor', admin: 'admin' }

  after_initialize :set_default_role, if: :new_record?

  validates :name, presence: true
  validates :phone_number, presence: true, format: { with: /\A\d{10}\z/, message: "must be 10 digits long" }

  def set_default_role
    self.role ||= :donor
  end
end
