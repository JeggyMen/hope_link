class Donation < ApplicationRecord
  belongs_to :user 
  has_many :allocations, dependent: :destroy
end
