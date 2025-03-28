class SonniksController < ApplicationController
  before_action :set_sonnik, only: %i[ show edit update destroy ]

  # GET /sonniks or /sonniks.json
  def index
    @sonniks = Sonnik.all
  end

  # GET /sonniks/1 or /sonniks/1.json
  def show
  end

  # GET /sonniks/new
  def new
    @sonnik = Sonnik.new
  end

  # GET /sonniks/1/edit
  def edit
  end

  # POST /sonniks or /sonniks.json
  def create
    @sonnik = Sonnik.new(sonnik_params)

    respond_to do |format|
      if @sonnik.save
        format.html { redirect_to @sonnik, notice: "Sonnik was successfully created." }
        format.json { render :show, status: :created, location: @sonnik }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sonnik.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sonniks/1 or /sonniks/1.json
  def update
    respond_to do |format|
      if @sonnik.update(sonnik_params)
        format.html { redirect_to @sonnik, notice: "Sonnik was successfully updated." }
        format.json { render :show, status: :ok, location: @sonnik }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sonnik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sonniks/1 or /sonniks/1.json
  def destroy
    @sonnik.destroy!

    respond_to do |format|
      format.html { redirect_to sonniks_path, status: :see_other, notice: "Sonnik was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sonnik
      @sonnik = Sonnik.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def sonnik_params
      params.require(:sonnik).permit(:title, :content, :image)
    end    
end

class SonniksController < ApplicationController
  def show
    @sonnik = Sonnik.find(params[:id])
  end
  # ...
end

