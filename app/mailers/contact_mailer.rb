class ContactMailer < ApplicationMailer

  def contact(message)
    @message = message

    mail(to: 'salut@cdltbisou.com',
         body: @message.body,
         from: @message.email
    )

  end
end
