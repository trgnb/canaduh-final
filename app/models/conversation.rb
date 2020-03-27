class Conversation < ApplicationRecord
  belongs_to :sender, class_name: "User", foreign_key: "sender_id"
  belongs_to :receiver, class_name: "User", foreign_key: "receiver_id"
  has_many :private_messages, dependent: :destroy

  validates_uniqueness_of :sender_id, scope: :receiver_id

  scope :between, -> (sender_id, receiver_id) do
    where("(conversations.sender_id = ? AND conversations.receiver_id = ?) OR (conversations.receiver_id = ? AND conversations.sender_id = ?)", sender_id, receiver_id, sender_id, receiver_id)
  end

  def recipient(current_user)
    self.sender_id == current_user.id ? self.receiver : self.sender
  end

  def unread_private_message_count(current_user)
    self.private_messages.where("user_id != ? AND read = ?", current_user.id, false).count
  end

  def show_last_message(current_user, conversation)
    if User.find(conversation.sender_id) == current_user
      conversation.private_messages.where(user_id: sender_id).last.body
    else
      Conversation.where(receiver_id: current_user, id: conversation).last.private_messages.last.body
    end
  end
end
