class NewstudentsController < ApplicationController
  before_action :set_newstudent, only: [:show, :edit, :update, :destroy]

  # GET /newstudents
  # GET /newstudents.json
  def index
    @newstudents = Newstudent.all
  end

  # GET /newstudents/1
  # GET /newstudents/1.json
  def show
  end

  # GET /newstudents/new
  def new
    @newstudent = Newstudent.new
  end

  # GET /newstudents/1/edit
  def edit
  end

  # POST /newstudents
  # POST /newstudents.json
  def create
    @newstudent = Newstudent.new(newstudent_params)

    respond_to do |format|
      if @newstudent.save
        format.html { redirect_to @newstudent, notice: 'Newstudent was successfully created.' }
        format.json { render action: 'show', status: :created, location: @newstudent }
      else
        format.html { render action: 'new' }
        format.json { render json: @newstudent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newstudents/1
  # PATCH/PUT /newstudents/1.json
  def update
    respond_to do |format|
      if @newstudent.update(newstudent_params)
        format.html { redirect_to @newstudent, notice: 'Newstudent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @newstudent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newstudents/1
  # DELETE /newstudents/1.json
  def destroy
    @newstudent.destroy
    respond_to do |format|
      format.html { redirect_to newstudents_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newstudent
      @newstudent = Newstudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newstudent_params
      params.require(:newstudent).permit(:name, :birth, :street, :religion, :contact_person, :gender)
    end
end
