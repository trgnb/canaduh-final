class ChatRoom < ApplicationRecord
  has_many :messages, dependent: :destroy

  def show_all_rooms
    @all_rooms = current_user.chat_rooms
  end
end
