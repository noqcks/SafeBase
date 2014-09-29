class Result < ActiveRecord::Base
    DISEASES = [:herpes, :chlamydia, :gonorrhoeae, :hiv, :hepatitis, :syphilis]

    belongs_to :user
    belongs_to :clinic

    validates_presence_of :clinic_id, :user_id, :herpes, :chlamydia, :gonorrhoeae, :hiv, :hepatitis, :syphilis
  
    validates :herpes, :chlamydia, :gonorrhoeae, :hiv, :hepatitis, :syphilis,
              format: {with: /[-1,0,1]/, message: "Test result needs to be either -1, 0 or 1"}

end
