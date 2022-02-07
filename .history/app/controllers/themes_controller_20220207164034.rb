class ThemesController < ApplicationController
  protect_from_forgery except: :index
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
