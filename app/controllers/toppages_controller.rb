class ToppagesController < ApplicationController
  
  def index
    if logged_in?
    @memos = current_user.memos
    end
  end
  
  def correct_user
        @memo = current_user.memos.find_by(id: params[:id])
        unless @memo
          redirect_to root_url
        end
  end
  
   private
  
  def set_message
    @message = Message.find(params[:id])
  end
end
