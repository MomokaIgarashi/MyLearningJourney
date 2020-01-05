class RecordsController < ApplicationController

  def home
    @total_studytime = Record.all.sum(:studytime)
    
  end

  def index
    @records = Record.all.order(id: "DESC")
    @total_studytime = Record.all.sum(:studytime)
  end

  def new
  end

  def create
    Record.create(record_params)
  end

  def show
  end

  private
    def record_params
      params.permit(:date, :studytime, :content)
    end

end
