class ThemesController < ApplicationController
  protect_from_forgery except: :index
  def index
    @themes = Theme.all
  end

  def create
    @theme = Theme.new(theme_params)
    if @theme.save
      redirect_to @theme, notice: "感想「#{theme.name}」を登録しました"
    else
      render :new
    end
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
  
  def destroy
    theme = Theme.find(params[:id])
    theme.destroy
    redirect_to themes_url, notice: "感想「#{theme.name}」を削除しました。"
  end
 
  private
  def theme_params
    params.require(:theme).permit(:name, :description)
  end

end
