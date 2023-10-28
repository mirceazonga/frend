class Frend1sController < ApplicationController
  before_action :set_frend1, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]
  # GET /frend1s or /frend1s.json
  def index
    @frend1s = Frend1.all
  end

  # GET /frend1s/1 or /frend1s/1.json
  def show
  end

  # GET /frend1s/new
  def new
   # @frend1 = Frend1.new
    @frend1 = current_user.frend1s.build   
  end

  # GET /frend1s/1/edit
  def edit
  end

  # POST /frend1s or /frend1s.json
  def create
   # @frend1 = Frend1.new(frend1_params)
   @frend1 = current_user.frend1s.build(frend1_params)

    respond_to do |format|
      if @frend1.save
        format.html { redirect_to frend1_url(@frend1), notice: "Frend1 was successfully created." }
        format.json { render :show, status: :created, location: @frend1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @frend1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frend1s/1 or /frend1s/1.json
  def update
    respond_to do |format|
      if @frend1.update(frend1_params)
        format.html { redirect_to frend1_url(@frend1), notice: "Frend1 was successfully updated." }
        format.json { render :show, status: :ok, location: @frend1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @frend1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frend1s/1 or /frend1s/1.json
  def destroy
    @frend1.destroy

    respond_to do |format|
      format.html { redirect_to frend1s_url, notice: "Frend1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @frend1 = current_user.frend1s.find_by(id: params[:id])
    redirect_to frend1s_path, notice: "Not autorized to edit this frend1" if @frend1.nil?
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frend1
      @frend1 = Frend1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def frend1_params
      params.require(:frend1).permit(:first_name, :last_name, :email, :phone, :twitter, :user_id)
    end
end