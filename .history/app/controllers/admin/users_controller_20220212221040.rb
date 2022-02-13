class Admin::UsersController < ApplicationController
  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to admin_user_url(@user), notice: "���[�U�[�u#{@user.name]}��o�^���܂���"
    else
      render :new
    end
  end
  def show
  end

  def index
  end
end
