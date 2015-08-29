class CarPoolingRequestsController < ApplicationController
  before_action :set_car_pooling_request, only: [:show, :edit, :update, :destroy]

  # GET /car_pooling_requests
  # GET /car_pooling_requests.json
  def index
    @car_pooling_requests = CarPoolingRequest.all
  end

  # GET /car_pooling_requests/1
  # GET /car_pooling_requests/1.json
  def show
  end

  # GET /car_pooling_requests/new
  def new
    @car_pooling_request = CarPoolingRequest.new
  end

  # GET /car_pooling_requests/1/edit
  def edit
  end

  # POST /car_pooling_requests
  # POST /car_pooling_requests.json
  def create
    @car_pooling_request = CarPoolingRequest.new(car_pooling_request_params)

    respond_to do |format|
      if @car_pooling_request.save
        format.html { redirect_to @car_pooling_request, notice: 'Car pooling request was successfully created.' }
        format.json { render :show, status: :created, location: @car_pooling_request }
      else
        format.html { render :new }
        format.json { render json: @car_pooling_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_pooling_requests/1
  # PATCH/PUT /car_pooling_requests/1.json
  def update
    respond_to do |format|
      if @car_pooling_request.update(car_pooling_request_params)
        format.html { redirect_to @car_pooling_request, notice: 'Car pooling request was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_pooling_request }
      else
        format.html { render :edit }
        format.json { render json: @car_pooling_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_pooling_requests/1
  # DELETE /car_pooling_requests/1.json
  def destroy
    @car_pooling_request.destroy
    respond_to do |format|
      format.html { redirect_to car_pooling_requests_url, notice: 'Car pooling request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_pooling_request
      @car_pooling_request = CarPoolingRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_pooling_request_params
      params.require(:car_pooling_request).permit(:email, :password, :user_id, :travel_id, :prefer_from, :prefer_to)
    end
end
