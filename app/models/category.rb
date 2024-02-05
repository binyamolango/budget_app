class Category < ApplicationRecord
  belongs_to :user
  has_many :records

  validates :name, presence: true, length: { maximum: 250 }
end
