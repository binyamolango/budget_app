class Record < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :category_records, dependent: :destroy
  has_many :categories, through: :category_records

  accepts_nested_attributes_for :category_records

  validates :name, presence: true, length: { maximum: 250 }
  validates :amount, numericality: { greater_than_or_equal_to: 0 }
end
