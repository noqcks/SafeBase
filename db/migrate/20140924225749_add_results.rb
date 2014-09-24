class AddResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :clinic_id
      t.integer :user_id
      t.integer :herpes
      t.integer :chlamydia
      t.integer :gonorrhoeae
      t.integer :hiv
      t.integer :hepatitis
      t.integer :syphilis

      t.timestamps
    end
  end
end
