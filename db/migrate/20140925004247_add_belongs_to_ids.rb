class AddBelongsToIds < ActiveRecord::Migration
  def change
    change_table :results do |t|
      t.remove :clinic_id, :user_id
      t.belongs_to :user
      t.belongs_to :clinic
    end
  end
end
