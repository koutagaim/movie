class Admin::UsersController < ApplicationController
  before_action :require_admin
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to admin_user_path(@user), notice: "���[�U�u#{@user.name}�v��o�^���܂����B"
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to admin_user_path(@user), notice: "���[�U�u#{@user.name}�v���X�V���܂����B"
    else
      render :new
    end
  end

  def destroy
    @user.destroy
    redirect_to admin_users_url, notice: "���[�U�u#{@user.name}�v���폜���܂����B"
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :admin, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def require_admin
    redirect_to root_path unless current_user.admin?
  end
end
