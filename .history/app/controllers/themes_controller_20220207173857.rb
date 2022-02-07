class ThemesController < ApplicationController
  protect_from_forgery with: :exception 
  def index
    @theme = Theme.new
  end

  def show
  end

  def new
  end

  def edit
  end
end
