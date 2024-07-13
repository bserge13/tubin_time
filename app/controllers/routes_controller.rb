class RoutesController < ApplicationController
  def index
    @routes = Route.all
  end

  ## save this 'show for after MVP to show details of a route
  # def show
  #   @route = Route.find(params[:id])
  # end

  def create
    @route = Route.new(route_params)
    if @route.save
      redirect_to routes_path
    else
      render 'new'
    end
  end

  private
  def route_params
    params.require(:route).permit(:name, :description)
  end
end