class QueensController < ApplicationController
  def index
    @queens = Queen.all
  end

  def show
    @queen = Queen.find(params[:id])
  end
end
