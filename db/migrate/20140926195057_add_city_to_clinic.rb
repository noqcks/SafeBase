class AddCityToClinic < ActiveRecord::Migration
  def change
    add_column :clinics, :city, :string
  end
end
