class AtmMachine < ActiveRecord::Base
    has_many :transactions
    geocoded_by :address
after_validation :geocode, :if => :address_changed?
def show
   session[:atm_no] = @atm_machine.id
end
    
end
