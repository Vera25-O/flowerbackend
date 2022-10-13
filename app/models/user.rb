class User < ApplicationRecord
    has_many :flowers
    has_secure_password
end
