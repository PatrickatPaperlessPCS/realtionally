class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable

         validates :name, :company_name, :cell, :crm, :un, :pw, presence: true 
         validates :honeypot, presence: false 
  after_create :send_sign_up_email

  def send_sign_up_email
	UserMailer.sign_up(id).deliver_later
  end



  # def send_paid_email
  # 	UserMailer.paid(id).deliver_later
  # end
end
