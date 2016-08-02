class Arcade < ApplicationRecord
  belongs_to :game
  belongs_to :location

  validates :comment, length: { maximum: 30, message: "A comment can't be
    longer than 30 characters"}, allow_blank: true

  validates :game, :location, presence: { message: 'A game and location are
    required in an Arcade association'}

end
