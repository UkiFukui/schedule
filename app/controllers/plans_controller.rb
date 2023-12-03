class PlansController < ApplicationController
  def index
    @plans = Plan.all
    @today = Date.today.strftime("%Y/%m/%d")
  end

  def new
  end

  def create
  end

  def show
    @plan = Plan.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
