class QueensController < ApplicationController
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

  private

  def queen_params
    params.require(:queen).permit(:name, :location, :price, :skills)
  end



  
end
