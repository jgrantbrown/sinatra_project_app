


Find concerts with a specfic user

find the bands and count how many concerts a user attended by that bands

Find for a user how many times they have attended a concert by each band
User 1
band
  VanHalen(2)



 @user.concerts.each do |concert|
Concert.select("band_id").where("band_id == concert.band.id ")
end
