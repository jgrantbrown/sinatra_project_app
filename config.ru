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

run ApplicationController
