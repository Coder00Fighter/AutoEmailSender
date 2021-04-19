class GuestMailer < ApplicationMailer
    def confirmation_email(guest)
        @guest = guest
        @url = 'www.collectdatawebsite.com'
        mail(to: @guest.email, subject: 'Welcome to My Awesome Site')
    end
end
