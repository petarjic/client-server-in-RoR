class CreateOrAssociations < ActiveRecord::Migration
  def change
    create_table :or_associations do |t|
      t.integer :registration_id
      t.integer :registrar_id

      t.timestamps null:false
    end
    add_index :or_associations, :registration_id
    add_index :or_associations, :registrar_id
    add_index :or_associations, [:registration_id, :registrar_id], unique: true
  end
end