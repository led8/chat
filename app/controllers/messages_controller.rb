class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chatroom

  def create
    message = @chatroom.messages.new(strong_params)
    message.user = current_user

    if message.save
      redirect_to @chatroom
    end
  end

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:chatroom_id])
  end

  def strong_params
    params.require(:message).permit(:body)
  end
end
