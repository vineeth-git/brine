class UsersController < ApplicationController
    def index
        NotificationMailer.target_price_notification_email.deliver_later
        render json: User.all
    end
end
