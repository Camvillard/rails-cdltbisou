class ContactMailer < ApplicationMailer

  def contact(message)
    @message = message

    mail(to: 'salut@cdltbisou.com',
         subject: "new message from cdltbisou !",
         from: 'salut@cdltbisou.com'
    )
  end
end
