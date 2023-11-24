class QueensController < ApplicationController
  before_action :set_queen, only: [:show, :edit, :update]
  def index
    @queens = Queen.all
    if params[:search].present?
      sql_subquery = "name @@ :search OR location @@ :search"
      @queens = @queens.where(sql_subquery, search: "%#{params[:search]}%")
    end
    if params[:skills].present?
      params[:skills][1..].each do |skill|
        @queens = @queens.where("skills LIKE ?", "%#{skill}%")
      end
    end
  end


  def show
    @queen = Queen.find(params[:id])
    @booking = Booking.new
  end

  def new
    @queen = Queen.new
  end

  def create
    @queen = Queen.new(queen_params)
    @queen.user = current_user
    if @queen.save
      redirect_to dashboard_path, notice: 'Drag Queen profile created successfully. Work Bitch! '
    else
      render :new, status: :unprocessable_entity
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
