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
  accepts_nested_attributes_for :arcades
  has_many :comments, as: :commentable

  scope :released_in, ->(year) { where('release_date = ?', year) }

  scope :popular, -> {
    joins(:arcades).select('games.*, location_id, count(game_id) as `game_count`')
    .group(:game_id)
    .order('game_count desc')
  }

  extend FriendlyId
  friendly_id :name, :use => :slugged
end
