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
