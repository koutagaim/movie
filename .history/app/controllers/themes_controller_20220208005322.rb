class ThemesController < ApplicationController
  protect_from_forgery with: :exception 
  def index
    @theme = Theme.new
  end

  def create
    theme = Theme.new(theme_params)
    theme.save!
    redirect_to themes_path,notice: "感想「#{theme.name}」を登録しました"

  def show
  end

  def new
  end

  def edit
  end
end
