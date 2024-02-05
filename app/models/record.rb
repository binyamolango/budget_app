class Record < ApplicationRecord
  belongs_to :user
  has_many :categories

  validates :name, presence: true, length: { maximum: 250 }
  validates :amount, numericality: { greater_than_or_equal_to: 0 }
end