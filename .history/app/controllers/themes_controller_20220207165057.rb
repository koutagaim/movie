class ThemesController < ApplicationController
  protect_from_forgery except: :new
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
