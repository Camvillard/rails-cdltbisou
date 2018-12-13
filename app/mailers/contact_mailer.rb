class ContactMailer < ApplicationMailer

  def contact(message)
    @message = message

    mail(to: 'salut@cdltbisou.com',
         # body: @message.body,
         subject: "new message from cdltbisou! #{@message.email}",
         from: 'salut@cdltbisou.com'
    )
  end
end
