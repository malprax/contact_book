class MessagesController < ApplicationController
  before_action :setup_negative_captcha, :only => [:new, :create]
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  # GET /messages
  # GET /messages.json
  def index
    @messages = Message.all
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
  end

  # GET /messages/new
  def new
    @message = Message.new
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  # POST /messages.json
  def create
    @message = Message.new(message_params, @captcha.values)
    

    respond_to do |format|
      if @captcha.valid && @message.save
        format.html { redirect_to @message, notice: 'Message was successfully created.' }
        format.json { render action: 'show', status: :created, location: @message }
      else
        format.html { render action: 'new', notice: @captcha.error if @captcha.error }
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
    
    def setup_negative_captcha
        @captcha = NegativeCaptcha.new(
          # A secret key entered in environment.rb. 'rake secret' will give you a good one.
          secret: '103647d3c4cfafb35d1a45ce8c3f85baebc29094cd6aec0d5d80c3c4579917860ab6698d3d0949ab467af9626e1d08b698a12b92b1c1dedbd598344bb03a54ed',
          spinner: request.remote_ip, 
          # Whatever fields are in your form
          fields: [:name, :email, :messages],  
          params: params
        )
      end
end
