class User < ActiveRecord::Base

    has_many :results
    has_many :clinics, :through => :results
    
    VALID_EMAIL_REGEX = /[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}/
    validates :email, format: { with: VALID_EMAIL_REGEX, message: "Enter a valid Email address !" }

    validates_presence_of :first_name, :last_name, :email, :password

    validates :email, uniqueness: true
    validates :first_name, :last_name, :password, length: { maximum: 30 }

    def current_diagnosis(disease)
      return 'NOT TESTED' if results.where("#{disease} = ? OR #{disease} = ?", 0, 1) == []
      if results.where("#{disease} = ? OR #{disease} = ?", 0, 1).last[disease] == 0
        return 'NEGATIVE'
      elsif results.where("#{disease} = ? OR #{disease} = ?", 0, 1).last[disease] == 1
        return 'POSITIVE'
      end
    end

    def most_recent_check_for(disease)
      results.where("#{disease} = ? OR #{disease} = ?", 0, 1).last
    end
end