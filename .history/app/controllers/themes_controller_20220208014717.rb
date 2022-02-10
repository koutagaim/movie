class ThemesController < ApplicationController
  # protect_from_forgery with: :exception 
  def index
    @theme = Theme.new
  end

  def create
    theme = Theme.new(theme_params)
    theme.save!
    redirect_to themes_url,notice: "感想「#{theme.name}」を投稿しました"
  end  

  def show
  end

  def new
  end

  def edit
  end

  private
  def theme_params
    params.require(:theme).permit(:name, :description)
  end

end
