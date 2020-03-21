class PrivateMessagesController < ApplicationController
  before_action :authenticate_user!

  before_action do
    @conversation = Conversation.find(params[:conversation_id])
  end
  def index
    @private_messages = @conversation.private_messages

    @private_messages.where("user_id != ? AND read = ?", current_user.id, false).update_all(read: true)

    @private_message = @conversation.private_messages.new
  end

  def create
    @private_message = @conversation.private_messages.new(private_message_params)
    @private_message.user = current_user

    if @private_message.save
      redirect_to conversation_private_messages_path(@conversation)
    end
  end

  private

  def private_message_params
    params.require(:private_message).permit(:body, :user_id)
  end
end
