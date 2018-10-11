class JuicesController < ApplicationController
  before_action :set_juice, only: [:show, :edit, :update, :destroy]

  # GET /juices
  # GET /juices.json
  def index
    if params[:hoge]
        @juices = Juice.where(name: params[:hoge])
      else
        # @juices = Juice.find_by_sql("SELECT * FROM juices WHERE id = 2")
        @juices = Juice.all
    end
    
  end

  # GET /juices/1
  # GET /juices/1.json
  def show
    if params[:user_id] && params[:juice_id]
      data = Post.new(user_id: params[:user_id], juice_id: params[:juice_id])
      data.save
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /juices/new
  def new
    @juice = Juice.new
  end

  # GET /juices/1/edit
  def edit
  end

  # POST /juices
  # POST /juices.json
  def create
    @juice = Juice.new(juice_params)

    respond_to do |format|
      if @juice.save
        format.html { redirect_to @juice, notice: 'Juice was successfully created.' }
        format.json { render :show, status: :created, location: @juice }
      else
        format.html { render :new }
        format.json { render json: @juice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /juices/1
  # PATCH/PUT /juices/1.json
  def update
    respond_to do |format|
      if @juice.update(juice_params)
        format.html { redirect_to @juice, notice: 'Juice was successfully updated.' }
        format.json { render :show, status: :ok, location: @juice }
      else
        format.html { render :edit }
        format.json { render json: @juice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /juices/1
  # DELETE /juices/1.json
  def destroy
    @juice.destroy
    respond_to do |format|
      format.html { redirect_to juices_url, notice: 'Juice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_juice
      @juice = Juice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def juice_params
      params.require(:juice).permit(:name, :capacity, :price, :image, :user_id, :juice_id)
    end
end
