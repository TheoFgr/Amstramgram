class ChatroomsController < ApplicationController

  def index
    @chatrooms = Chatroom.all
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    @chatroom = Chatroom.find_by(name: User.find(params[:id]).nickname)
    @chatroom ||= Chatroom.create(name: User.find(params[:id]).nickname)
    redirect_to chatroom_path(@chatroom)
  end
end
