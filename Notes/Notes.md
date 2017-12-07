
Need to add venue show page and links from all venues named












Build a sinatra app to track history of concerts attended.


Models
Users
  has_many concerts through concert_user_comments
  has-many concert_user_comments
    username
    email
    password_digest




Concert
    belongs_to a venue
    belongs_to a band
    has_many users through concert_user_comments
    has-many concert_user_comments

      band_id
      name
      date
      venue_id

Concert_user
  belongs_to user
  belongs_to concert
    user_id
    concert_id
    comments

Band
    has_many concerts
    add this:
    has_many venues through concerts
  name


  Venue
    has_many concerts
    has many bands through concerts

    name
