class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :categories
  has_many :records, foreign_key: 'author_id', dependent: :destroy, inverse_of: 'author'

  validates :name, presence: true, length: { maximum: 250 }
end
