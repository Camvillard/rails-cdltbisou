class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.valid?
      ContactMailer.contact(@message).deliver_now
      redirect_to thanks_path
      flash[:notice] = "merci pour votre message !"
    else
      flash[:notice] = "il y a eu une erreur lors de l'envoi du message, merci d'essayer à nouveau."
      render :new
    end
  end

  def thanks
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :subject, :body, :sender)
  end
end
