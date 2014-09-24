class AddUserTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :email
      t.string :password
      t.string :personal_health_number

      t.timestamps
    end
  end
end
