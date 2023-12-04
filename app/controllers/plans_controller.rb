class PlansController < ApplicationController
  def index
    @plans = Plan.all
    @today = Date.today.strftime("%Y/%m/%d")
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(params.require(:plan).permit(:title, :start_date, :finish_date, :all_day, :memo))
    if @plan.save
      flash[:notice] = "スケジュールを登録しました"
      redirect_to :plans
    else
      render "new"
    end
  end

  def show
    @plan = Plan.find(params[:id])
  end

  def edit
    @plan = Plan.find(params[:id])
  end

  def update
    @plan = Plan.find(params[:id])
    if @plan.update(params.require(:plan).permit(:title, :start_date, :finish_date, :all_day, :memo))
      flash[:notice] = "スケジュールを更新しました"
      redirect_to :plans
    else
      render "edit"
    end
  end

  def destroy
  end
end
