class Clinic < ActiveRecord::Base
    has_many :results
    has_many :users, :through => :results

    validates_presence_of :name, :address, :institution_id, :password, :latitude, :longitude, :email, :website, :phone
    validates :name, length: { maximum: 50 }
    validates :institution_id, length: { maximum: 10 }
    validates :password, length: { maximum: 20 }
    validates :email, length: { maximum: 50 }
    validates :website, length: { maximum: 50 }
    validates :phone, length: { maximum: 30 }

end