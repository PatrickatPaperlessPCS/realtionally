class UserMailer < ApplicationMailer

# this is the private notification to me that someone signed up
	def sign_up(id)
		@user = User.find(id)	
			mail(
		  :subject => 'New Sign Up' ,
		  :to  => 'patrick@relationally.net' ,
		  :track_opens => 'true'
			)
	end
# this is the pubic 'welcome' email that goes out to a new user when they sign up
	def email(id)
		@user = User.find(id)	
			mail(
		  :subject => 'Important information from Relationally.net' ,
		  :to => @user.email , 
		  :track_opens => 'true'
			)
	end
# this is the private notification to me that someone paid/completed the sign up process
	def paid(id)
		@user = User.find(id)	
			mail(
		  :subject => 'New Sign Up' ,
		  :to  => 'patrick@relationally.net' ,
		  :track_opens => 'true'
			)
	end
end
