class CreateAtmMachines < ActiveRecord::Migration
  def change
    create_table :atm_machines do |t|
      t.string :name
      t.string :address
      t.string :street
      t.string :ctiy
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
