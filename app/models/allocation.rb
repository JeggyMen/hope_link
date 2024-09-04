class Allocation < ApplicationRecord
  belongs_to :donation, optional: true
  validates :category, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
