class PhilosophiesController < ApplicationController
  load_and_authorize_resource, except= :show
  before_action :set_philosophy, only: [:show, :edit, :update, :destroy]

  # GET /philosophies
  # GET /philosophies.json
  def index
    @philosophies = Philosophy.all
  end

  # GET /philosophies/1
  # GET /philosophies/1.json
  def show
  end

  # GET /philosophies/new
  def new
    @philosophy = Philosophy.new
  end

  # GET /philosophies/1/edit
  def edit
  end

  # POST /philosophies
  # POST /philosophies.json
  def create
    @philosophy = Philosophy.new(philosophy_params)

    respond_to do |format|
      if @philosophy.save
        format.html { redirect_to @philosophy, notice: 'Philosophy was successfully created.' }
        format.json { render action: 'show', status: :created, location: @philosophy }
      else
        format.html { render action: 'new' }
        format.json { render json: @philosophy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /philosophies/1
  # PATCH/PUT /philosophies/1.json
  def update
    respond_to do |format|
      if @philosophy.update(philosophy_params)
        format.html { redirect_to @philosophy, notice: 'Philosophy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @philosophy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /philosophies/1
  # DELETE /philosophies/1.json
  def destroy
    @philosophy.destroy
    respond_to do |format|
      format.html { redirect_to philosophies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_philosophy
      @philosophy = Philosophy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def philosophy_params
      params.require(:philosophy).permit(:input_text)
    end
end
