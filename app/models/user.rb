class User < ApplicationRecord
    # has_many :flowers, dependent.destroy
    has_secure_password
end
