class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :streetAddress
      t.string :city
      t.string :country
      t.string :postalCode
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
