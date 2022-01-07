class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :studentNumber
      t.string :firstName
      t.string :lastName
      t.string :email

      t.timestamps
    end
  end
end
