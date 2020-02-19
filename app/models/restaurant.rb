class Restaurant < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: %w[italian chinese japanese french belgian] }
  has_many :reviews, dependent: :destroy
end
