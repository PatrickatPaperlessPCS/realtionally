class UserMailer < ApplicationMailer


	def sign_up(id)
		@user = User.find(id)	
			mail(
		  :subject => 'New Sign Up' ,
		  :to  => 'patrick@relationally.net' ,
		  :track_opens => 'true'
			)
	end
	def email(id)
		@user = User.find(id)	
			mail(
		  :subject => 'Important information from Relationally.net' ,
		  :to => @user.email , 
		  :bcc  => 'patrick@relationally.net' ,
		  :track_opens => 'true'
			)
	end
	def paid(id)
		@user = User.find(id)	
			mail(
		  :subject => 'New Sign Up' ,
		  :to  => 'patrick@relationally.net' ,
		  :track_opens => 'true'
			)
	end
end
