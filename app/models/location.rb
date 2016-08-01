class Location < ApplicationRecord

  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, presence: { message: 'The location name is required and must
                            be unique.' }

  validates :name, uniqueness: { message: 'The location name must be unique.'
                                }, if: "name.present?"

  validates :description, presence: { message: 'A short location description is
                                     required.' }
  validates :street, presence: { message: 'A street address is required' }

  validates :city, presence: { message: 'A city is required.' }

  validates :zip, presence: { message: 'A zip code is required' }

  with_options if: "zip.present?" do |z|
    z.validates :zip, numericality: { only_integer: true, message: 'A zip code
                                      must consist of only integers' }
    z.validates :zip, length: { is: 5, message: 'The zip code must consist of
                                      exactly five digits' }
  end

  after_create :log_location
  # before_validation :normalize_telephone

  # scopes
  scope :has_url, -> { where("url <> ''") }
  scope :has_telephone, -> { where("telephone <> ''") }

  def to_s
    "#{id} - Created: #{created_at} - Updated: <div id="">updated_at</div>"
  end

  def address
    street + ' ' + city + ' ' + state + ' ' + zip
  end

  def should_generate_new_friendly_id?
    name_changed?
  end

  private

  def log_location
    logger.info "New location #{id} - #{name} created"
  end

  def normalize_telephone
    telephone.gsub!(/[^0-9]/i, '')
  end

end
