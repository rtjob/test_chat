class ChatController < ApplicationController
  def new
    @chat = Chat.new
  end

  def index
    @chatform = Chat.new
    @chats = Chat.order(_id: :asc)
  end

  def create
    # フォームから送信されたデータを受け取り、保存する
    @chat = Chat.new(
       userName: params[:inputUserName],
       # comments: params[:inputComment]
    )
    #rootページにredirect
    if @chat.save
      redirect_to("/chat/index")
    else
      @errorMessage = "更新に失敗"
      render("/chat/index")    
    end
  end
end
