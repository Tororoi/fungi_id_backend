class User < ApplicationRecord
    has_secure_password
    
    has_many :observations

    validates :username, uniqueness: {case_sensitive: false}, on: :create
end
