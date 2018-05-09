class UserNotifierMailer < ApplicationMailer

    
        default :from => 'supportapp@gdaymate.com'
      
        # send a signup email to the user, pass in the user object that   contains the user's email address
        def send_signup_email(user)
          @user = user
          mail( :to => @user.email,
          :subject => 'Thanks for signing up for our amazing app' )
        end
      
        def send_listing_email(user)
          @user = user
          mail( :to => @user.email,
          :subject => 'Thanks for creating a listing')
        end
end
