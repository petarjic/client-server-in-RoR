class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.integer :studentNumber
      t.string :firstName
      t.string :lastName
      t.string :email
      t.integer :lockerNumber
      t.string :lockerType
      t.integer :lockerCombo
      t.integer :numberOfSemesters
      t.boolean :termsAccepted

      t.timestamps
    end
  end
end
