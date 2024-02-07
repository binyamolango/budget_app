class RecordsController < ApplicationController
  load_and_authorize_resource
  
  def new
    @category = Category.find(params[:category_id])
    @record = Record.new
  end

  def create
    @category = Category.find(params[:category_id])
    @record = Record.new(record_params)
    @record.author = current_user

    if @record.save
      flash[:notice] = 'Transaction successfully created.'
      redirect_to @category
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def record_params
    params.require(:record).permit(:name, :amount, category_ids: [])
  end
end
