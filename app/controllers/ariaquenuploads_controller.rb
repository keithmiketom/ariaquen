class AriaquenuploadsController < ApplicationController
  # GET /ariaquenuploads
  # GET /ariaquenuploads.json
  def index
    @ariaquenuploads = Ariaquenupload.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ariaquenuploads }
    end
  end

  # GET /ariaquenuploads/1
  # GET /ariaquenuploads/1.json
  def show
    @ariaquenupload = Ariaquenupload.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ariaquenupload }
    end
  end

  # GET /ariaquenuploads/new
  # GET /ariaquenuploads/new.json
  def new
    @ariaquenupload = Ariaquenupload.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ariaquenupload }
    end
  end

  # GET /ariaquenuploads/1/edit
  def edit
    @ariaquenupload = Ariaquenupload.find(params[:id])
  end

  # POST /ariaquenuploads
  # POST /ariaquenuploads.json
  def create
    @ariaquenupload = Ariaquenupload.new(params[:ariaquenupload])

    respond_to do |format|
      if @ariaquenupload.save
        format.html { redirect_to @ariaquenupload, notice: 'Ariaquenupload was successfully created.' }
        format.json { render json: @ariaquenupload, status: :created, location: @ariaquenupload }
      else
        format.html { render action: "new" }
        format.json { render json: @ariaquenupload.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ariaquenuploads/1
  # PUT /ariaquenuploads/1.json
  def update
    @ariaquenupload = Ariaquenupload.find(params[:id])

    respond_to do |format|
      if @ariaquenupload.update_attributes(params[:ariaquenupload])
        format.html { redirect_to @ariaquenupload, notice: 'Ariaquenupload was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ariaquenupload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ariaquenuploads/1
  # DELETE /ariaquenuploads/1.json
  def destroy
    @ariaquenupload = Ariaquenupload.find(params[:id])
    @ariaquenupload.destroy

    respond_to do |format|
      format.html { redirect_to ariaquenuploads_url }
      format.json { head :no_content }
    end
  end
end
