class ShowsController < ApplicationController
  def index
    @shows = Show.all
  end

  def new
    @show = Show.new
  end

  def create
    #show_params = params.require(:show).permit(:name, :picture)
    #@show = Show.new(show_params)
#puts params
#puts params[:show]
#puts params.slice(:show)
    attrs = params[:show].slice(:name, :picture)
#puts attrs
    @show = Show.new(attrs)
    @success = @show.save
puts @success

    if @success
      redirect_to shows_path #head(:created)
    else
      head(:unprocessable_entity)
    end
  end

  def destroy
    Show.find(params[:id]).destroy
    redirect_to shows_path
  end
end
