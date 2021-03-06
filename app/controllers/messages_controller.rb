class MessagesController < ApplicationController
  # load_and_authorize_resource
  before_action :authenticate_user!, except: [:create, :new]
  before_action :set_message, only: [:show, :edit, :update, :destroy]
  caches_page :public
  caches_action :show

  # GET /messages
  # GET /messages.json
  def index
    @messages = Message.all
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
    @locations = Location.all
    @location = Location.find(params[:id])
  end

  # GET /messages/new
  def new
    @page = Page.find_by_id(25)
    @message = Message.new
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  # POST /messages.json
  def create 
    @page = Page.find_by_id(25)    
    @message = Message.new(message_params)

    respond_to do |format|
      
      if @message.save
         # untuk mengganti pertanyaan humanizer
         #@user.change_humanizer_question(params[:user][:humanizer_question_id])
         ########################################################################
         # verify_recaptcha(:model => @message, :message => "Oh! It's error with reCAPTCHA!") && 
        format.html { redirect_to @message, notice: 'Message was successfully created.' }
        format.json { render action: 'show', status: :created, location: @message }
      else
        format.html { render action: 'new' }

        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messages/1
  # PATCH/PUT /messages/1.json
  def update
    respond_to do |format|
      if @message.update(message_params)
        format.html { redirect_to @message, notice: 'Message was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message.destroy
    respond_to do |format|
      format.html { redirect_to messages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:name, :email, :messages)
    end
end
