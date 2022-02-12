class ThemesController < ApplicationController
  protect_from_forgery with: :exception 
  def index
    @themes = Theme.all
  end

  def create
    theme = Theme.new(theme_params)
    theme.save!
    redirect_to themes_url, notice: "感想「#{theme.name}」を投稿しました"
  end  

  def destroy
    theme = Theme.find(params[:id])
    theme.destroy
    redirect_to tasks_url, notice: "感想「#{@theme.name}」を削除しました。"
  end

  def show
    @theme = Theme.find(params[:id])
  end

  def new
    @theme = Theme.new
  end

  def edit
    @theme = Theme.find(params[:id])
  end
  
  def update
    theme = Theme.find(params[:id])
    theme.update(theme_params)
    redirect_to themes_url, notice: "タスク「#{theme.name}」を更新しました"
  end

  private
  def theme_params
    params.require(:theme).permit(:name, :description)
  end

end
