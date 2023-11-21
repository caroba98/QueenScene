class QueensController < ApplicationController
  before_action :set_queen, only: [:show, :edit, :update]
  def index
    @queens = Queen.all
  end

  def show
    @queen = Queen.find(params[:id])
  end

  def new
    @queen = Queen.new
  end

  def create
    @queen = Queen.new(queen_params)
    if @queen.save
      redirect_to queen_path(@queen), notice: 'Drag Queen profile created successfully. Work Bitch! '
    else
      render :new
    end
  end

  def edit
    #!!! @queen is set by the set_queen method
  end

  def update
    if @queen.update(queen_params)
      redirect_to queen_path(@queen), notice: 'Yass Queen! Profile updated successfully.'
    else
      render :edit
    end
  end

  private

  def set_queen
    @queen = Queen.find(params[:id])
  end

  def queen_params
    params.require(:queen).permit(:name, :location, :price, :skills)
  end
end
