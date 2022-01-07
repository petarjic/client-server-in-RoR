class CreateLockers < ActiveRecord::Migration
  def change
    create_table :lockers do |t|
      t.integer :lockerNumber
      t.string :location
      t.string :type
      t.integer :combo

      t.timestamps
    end
  end
end
