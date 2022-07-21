class ManualInvestment < ApplicationRecord
  validates :value, numericality: { greater_than: 0 }, presence: true
  validates :bought_at, presence: true
  validates :type, presence: true
end
