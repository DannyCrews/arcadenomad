class Game < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :manufacturer, presence: true
  validates :release_date,
              numericality: {
                  only_integer: true,
                  greater_than_or_equal_to: 1970,
                  less_than_or_equal_to: 1989,
                  message: 'The release date must be between 1970 and 1989.'
              }
  belongs_to :manufacturer
  has_many :arcades, inverse_of: :game
  has_many :locations, through: :arcades

  extend FriendlyId
  friendly_id :name, :use => :slugged
end
