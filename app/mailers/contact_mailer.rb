class ContactMailer < ApplicationMailer

  def contact(message)
    @message = message

    mail(to: 'salut@cdltbisou.com',
         body: @message.body,
         sender: @message.email,
         from: 'salut@cdltbisou.com'
    )
  end
end
