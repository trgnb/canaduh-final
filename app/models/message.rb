class Message < ApplicationRecord
  belongs_to :chat_room
  belongs_to :user
  validates :content, presence: true, allow_blank: false
  after_create :broadcast_message

  def broadcast_message
  ActionCable.server.broadcast("chat_room_#{chat_room.id}", {
    message_partial: ApplicationController.renderer.render(partial: "messages/message", content_type: 'text/html', locals: { message: self, user_is_messages_author: false }),
    current_user_id: user.id
    })
  end

  def user_is_messages_author
    self.user == current_user
  end
end
