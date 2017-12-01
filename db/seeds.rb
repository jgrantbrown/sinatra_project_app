band_list = {
    "Pink Floyd" => {
    },
    "RUSH" => {
    },
    "The Doors" => {
    },
    "Phish" => {
    }
  }

band_list.each do |name, band_hash|
  b = Band.new
  b.name = name
  b.save
end

venue_list = {
    "MSG" => {
    },
    "The Forum" => {
    },
    "Foxboro" => {
    },
    "Staple Center" => {
    }
  }

  venue_list.each do |name, venue_hash|
    v = Venue.new
    v.name = name
    v.save
  end
