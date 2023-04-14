# Preview all emails at http://localhost:3000/rails/mailers/notification_mailer
class NotificationMailerPreview < ActionMailer::Preview
    def target_price_notification_email
        NotificationMailer.target_price_notification_email
    end
end
