class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)    # 実装は終わっていないことに注意!
   if @user.save
     flash[:success] = "仮登録が完了しました"
     redirect_to @user
   else
     render 'new'
   end
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

  def users_params
    params.require(:user).permit(:name, :email, :password,
                                  :password_confirmation)
  end


end
