class Location < ApplicationRecord

  after_create :log_location

  def to_s
    "#{id} - Created: #{created_at} - Updated: <div id="">updated_at</div>"
  end

  def address
    street + ' ' + city + ' ' + state + ' ' + zip
  end

  private

  def log_location
    logger.info "New location #{id} - #{name} created"
  end

end
