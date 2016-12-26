json.extract! atm_machine, :id, :name, :address, :street, :ctiy, :latitude, :longitude, :created_at, :updated_at
json.url atm_machine_url(atm_machine, format: :json)