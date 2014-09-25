class User < ActiveRecord::Base

    has_many :results
    has_many :clinics, :through => :results
    
    VALID_EMAIL_REGEX = /[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}/i
    validates :email, format: { with: VALID_EMAIL_REGEX, message: "Enter a valid Email address !" }

    validates :first_name, :last_name, :date_of_birth, :email,
      :password, :personal_health_number, presence: true
    validates :email, uniqueness: true
    validates :first_name, :last_name, :password, length: { maximum: 30 }

end