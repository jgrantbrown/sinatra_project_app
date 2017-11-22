class Band < ActiveRecord::Base
has_many :venues, through: :concerts
has_many :concerts

  def self.band_seen_count()
      # if user.id is in concert user collect bands and return the band with count of concerts attneded

      # self.where(:concert=>band["name"]).count

  end

end
