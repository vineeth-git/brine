
class User < ApplicationRecord
    has_many :user_alerts, dependent: :destroy
end
