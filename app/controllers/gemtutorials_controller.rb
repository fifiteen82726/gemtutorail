class GemtutorialsController < ApplicationController
  before_action :set_gemtutorial, only: [:show, :edit, :update, :destroy]

  # GET /gemtutorials
  # GET /gemtutorials.json
  def index
    @gemtutorials = Gemtutorial.all
  end

  # GET /gemtutorials/1
  # GET /gemtutorials/1.json
  def show
  end

  # GET /gemtutorials/new
  def new
    @gemtutorial = Gemtutorial.new
  end

  # GET /gemtutorials/1/edit
  def edit
  end

  # POST /gemtutorials
  # POST /gemtutorials.json
  def create
    @gemtutorial = Gemtutorial.new(gemtutorial_params)

    respond_to do |format|
      if @gemtutorial.save
        format.html { redirect_to @gemtutorial, notice: 'Gemtutorial was successfully created.' }
        format.json { render :show, status: :created, location: @gemtutorial }
      else
        format.html { render :new }
        format.json { render json: @gemtutorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gemtutorials/1
  # PATCH/PUT /gemtutorials/1.json
  def update
    respond_to do |format|
      if @gemtutorial.update(gemtutorial_params)
        format.html { redirect_to @gemtutorial, notice: 'Gemtutorial was successfully updated.' }
        format.json { render :show, status: :ok, location: @gemtutorial }
      else
        format.html { render :edit }
        format.json { render json: @gemtutorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gemtutorials/1
  # DELETE /gemtutorials/1.json
  def destroy
    @gemtutorial.destroy
    respond_to do |format|
      format.html { redirect_to gemtutorials_url, notice: 'Gemtutorial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gemtutorial
      @gemtutorial = Gemtutorial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gemtutorial_params
      params.require(:gemtutorial).permit(:name, :repo, :description, :genre, :score)
    end
end
