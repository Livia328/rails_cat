class CampusCatsController < ApplicationController
  before_action :set_campus_cat, only: %i[ show edit update destroy ]

  # GET /campus_cats or /campus_cats.json
  def index
    @campus_cats = CampusCat.all
  end

  # GET /campus_cats/1 or /campus_cats/1.json
  def show
  end

  # GET /campus_cats/new
  def new
    @campus_cat = CampusCat.new
  end

  # GET /campus_cats/1/edit
  def edit
  end

  # POST /campus_cats or /campus_cats.json
  def create
    @campus_cat = CampusCat.new(campus_cat_params)

    respond_to do |format|
      if @campus_cat.save
        format.html { redirect_to campus_cat_url(@campus_cat), notice: "Campus cat was successfully created." }
        format.json { render :show, status: :created, location: @campus_cat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @campus_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campus_cats/1 or /campus_cats/1.json
  def update
    respond_to do |format|
      if @campus_cat.update(campus_cat_params)
        format.html { redirect_to campus_cat_url(@campus_cat), notice: "Campus cat was successfully updated." }
        format.json { render :show, status: :ok, location: @campus_cat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @campus_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campus_cats/1 or /campus_cats/1.json
  def destroy
    @campus_cat.destroy

    respond_to do |format|
      format.html { redirect_to campus_cats_url, notice: "Campus cat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campus_cat
      @campus_cat = CampusCat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def campus_cat_params
      params.require(:campus_cat).permit(:name, :species, :age, :contact)
    end
end
