class AddClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :address
      t.string :institution_id
      t.string :password
      t.decimal :latitude
      t.decimal :longitude
      t.timestamps
    end
  end
end
