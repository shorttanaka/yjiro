class ChoicesController < ApplicationController
  before_action :authenticate_user!
  def index
    @choice = Choice.page(params[:page])
  end


  def new
    @choice = Choice.new
  end

  def create
    @choice = Choice.new(choice_params)
    if @choice.save
      redirect_to @choice
    else
      render :new
    end
  end

  def edit
    @choice = Choice.find(params[:id])
  end

  def update
    @choice = Choice.find(params[:id])
    if  @choice.update(choice_params)
      redirect_to @choice
    else
      render :edit
    end
  end

  def show
    @choice = Choice.find(params[:id])
  end

  def destroy
    @choice = Choice.find(params[:id])
    @choice.destroy
    redirect_to choices_path
  end

  private

  def choice_params
    params.require(:choice).permit(
      :choice_a,
      :choice_b,
      :answer,
      :user_id,
      )
  end

end
