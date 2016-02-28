class User < ActiveRecord::Base
  # override devise's email method to allow the app to
  # send emails as a background process and redirect
  # new registrants back to the home page before their
  # email is sent
  def send_devise_notification(notification, *args)
    devise_mailer.send(notification, self, *args).deliver
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable
end
