class User < ActiveRecord::Base
    has_many :results
    has_many :clinics, :through => :results
end