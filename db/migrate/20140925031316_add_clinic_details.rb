class AddClinicDetails < ActiveRecord::Migration
  def change
    add_column :clinics, :phone, :string 
    add_column :clinics, :email, :string
    add_column :clinics, :website, :string
  end
end
