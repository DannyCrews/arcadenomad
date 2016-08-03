class Manufacturer < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  # validates :games, presence: { message: 'Every manufacturer must be associated with at least one game.' }
  has_many :games
end
