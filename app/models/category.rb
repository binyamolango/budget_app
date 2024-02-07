class Category < ApplicationRecord
  belongs_to :user
  has_many :category_records, dependent: :destroy
  has_many :records, through: :category_records

  validates :name, presence: true, length: { maximum: 250 }
end
