class SparePartsController < ApplicationController
  # GET /spare_parts
  # GET /spare_parts.json
  def index
    @spare_parts = SparePart.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spare_parts }
    end
  end

  # GET /spare_parts/1
  # GET /spare_parts/1.json
  def show
    @spare_part = SparePart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spare_part }
    end
  end

  # GET /spare_parts/new
  # GET /spare_parts/new.json
  def new
    @spare_part = SparePart.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spare_part }
    end
  end

  # GET /spare_parts/1/edit
  def edit
    @spare_part = SparePart.find(params[:id])
  end

  # POST /spare_parts
  # POST /spare_parts.json
  def create
    @spare_part = SparePart.new(params[:spare_part])

    respond_to do |format|
      if @spare_part.save
        format.html { redirect_to @spare_part, notice: 'Spare part was successfully created.' }
        format.json { render json: @spare_part, status: :created, location: @spare_part }
      else
        format.html { render action: "new" }
        format.json { render json: @spare_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spare_parts/1
  # PUT /spare_parts/1.json
  def update
    @spare_part = SparePart.find(params[:id])

    respond_to do |format|
      if @spare_part.update_attributes(params[:spare_part])
        format.html { redirect_to @spare_part, notice: 'Spare part was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @spare_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spare_parts/1
  # DELETE /spare_parts/1.json
  def destroy
    @spare_part = SparePart.find(params[:id])
    @spare_part.destroy

    respond_to do |format|
      format.html { redirect_to spare_parts_url }
      format.json { head :no_content }
    end
  end
end
