class MessagetoldsController < ApplicationController
  # GET /messagetolds
  # GET /messagetolds.json
  def index
    @messagetolds = Messagetold.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @messagetolds }
    end
  end

  # GET /messagetolds/1
  # GET /messagetolds/1.json
  def show
    @messagetold = Messagetold.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @messagetold }
    end
  end

  # GET /messagetolds/new
  # GET /messagetolds/new.json
  def new
    @messagetold = Messagetold.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @messagetold }
    end
  end

  # GET /messagetolds/1/edit
  def edit
    @messagetold = Messagetold.find(params[:id])
  end

  # POST /messagetolds
  # POST /messagetolds.json
  def create
    @messagetold = Messagetold.new(params[:messagetold])

    respond_to do |format|
      if @messagetold.save
        format.html { redirect_to @messagetold, notice: 'Messagetold was successfully created.' }
        format.json { render json: @messagetold, status: :created, location: @messagetold }
      else
        format.html { render action: "new" }
        format.json { render json: @messagetold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /messagetolds/1
  # PUT /messagetolds/1.json
  def update
    @messagetold = Messagetold.find(params[:id])

    respond_to do |format|
      if @messagetold.update_attributes(params[:messagetold])
        format.html { redirect_to @messagetold, notice: 'Messagetold was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @messagetold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messagetolds/1
  # DELETE /messagetolds/1.json
  def destroy
    @messagetold = Messagetold.find(params[:id])
    @messagetold.destroy

    respond_to do |format|
      format.html { redirect_to messagetolds_url }
      format.json { head :no_content }
    end
  end
end
