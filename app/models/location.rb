class Location < ApplicationRecord

  def to_s
    "#{id} - Created: #{created_at} - Updated: <div id="">updated_at</div>"
  end

  def address
    street + ' ' + city + ' ' + state + ' ' + zip
  end
end
