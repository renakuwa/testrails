class UsersController < ApplicationController
 
  def show
    @user = User.find(params[:id])
   
  end
 
  def new
    @user = User.new
    
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
      flash[:success] = "Welcome to the Sample APP!"
    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end


  def login
  end

# ユーザー情報の更新
# いいねコントローラを作るーーいいねする、取り消す


end
