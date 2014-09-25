class Result < ActiveRecord::Base
    belongs_to :user
    belongs_to :clinic

    validates :clinic_id, :user_id, :herpes, :chlamydia, :gonorrhoeae, 
      :hiv, :hepatitis, :syphilis, presence: true
    validates :herpes, :chlamydia, :gonorrhoeae, :hiv, :hepatitis, :syphilis,
      format: {with: /[-1,0,1]/, message: "Test result needs to be either -1, 0 or 1"}

end
