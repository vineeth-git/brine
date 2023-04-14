class NotificationMailer < ApplicationMailer
    def target_price_notification_email
        puts "Triggering mail"
        logging.information("triggering email")
        mail(to: "vineeth.ravi15@gmail.com", subject: "Your alert is Triggered!")
    end
end
