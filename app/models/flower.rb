class Flower < ApplicationRecord
    belongs_to :user, dependent: :destroy

end
