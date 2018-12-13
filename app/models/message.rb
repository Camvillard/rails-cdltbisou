class Message
  include ActiveModel::Model
  attr_accessor :name, :email, :subject, :body, :sender

end
