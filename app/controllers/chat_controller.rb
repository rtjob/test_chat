class ChatController < ApplicationController
  def index
    @chats = Chat.order(_id: :asc)
  end

  def create
    # フォームから送信されたデータを受け取り、保存する
    @chat = Chat.new(sex: params[:selectedSex],
       userName: params[:inputUserName],
       comments: params[:inputComment]
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
