class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  def send_message message
    @message = message
    email = User.first.email rescue 'skaradams69@gmail.com'
    mail to: email, from: message.email, subject: "#{ message.name } te contacte depuis skaradams.fr"
  end
end
