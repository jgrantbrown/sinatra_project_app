require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride

use BandController
use ConcertController
use UserController
use VenueController
use SigninController
use CommentController

run ApplicationController

# use Rack::MethodOverride
# HTML Forms only support GET and POST requests.
# To perform other actions such as PUT, PATCH or DELETE, use the Rack::MethodOverride middleware.
#  Note that there is no need to add any new dependencies to the application as it's included in Rack already.
# <form method="POST" action="/posts/1">
#   <input type="hidden" name="_method" value="PUT">
#   <!-- ... -->
# </form>
