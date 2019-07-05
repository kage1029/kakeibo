class MemosController < ApplicationController
  before_action :require_user_logged_in
  #トップページ
  def show
  end
  
  #新規作成
  def new
    
  end

  #作成の処理
  def create
    Memo.create(title:params["memos"]["title"],date:params["memos"]["date"],price:params["memos"]["price"],user_id: current_user.id)
    redirect_to root_url
  end

  #編集
  def update
    memo = Memo.find(params["id"])
    memo.title = params["memos"]["title"]
    memo.price = params["memos"]["price"]
    memo.date = params["memos"]["date"]
    memo.category =params["memos"]["category"]
    memo.save
    redirect_to"/"
  end
  
  #編集の処理
  def edit
    @memo = Memo.find(params["id"])
  end
  
  #削除
  def destroy
    memo = Memo.find(params["id"])
    memo.destroy
    redirect_to "/"
  end
  
  def correct_user
        @memo = current_user.memos.find_by(id: params[:id])
        unless @memo
          redirect_to root_url
        end
  end
end
