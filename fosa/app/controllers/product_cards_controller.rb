class ProductCardsController < ApplicationController
  before_action :set_product_card, only: %i[ show edit update destroy ]

  # GET /product_cards or /product_cards.json
  def index
    @product_cards = ProductCard.all
  end

  # GET /product_cards/1 or /product_cards/1.json
  def show
  end

  # GET /product_cards/new
  def new
    @product_card = ProductCard.new
  end

  # GET /product_cards/1/edit
  def edit
  end

  # POST /product_cards or /product_cards.json
  def create
    @product_card = ProductCard.new(product_card_params)

    respond_to do |format|
      if @product_card.save
        format.html { redirect_to @product_card, notice: "Product card was successfully created." }
        format.json { render :show, status: :created, location: @product_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_cards/1 or /product_cards/1.json
  def update
    respond_to do |format|
      if @product_card.update(product_card_params)
        format.html { redirect_to @product_card, notice: "Product card was successfully updated." }
        format.json { render :show, status: :ok, location: @product_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_cards/1 or /product_cards/1.json
  def destroy
    @product_card.destroy!

    respond_to do |format|
      format.html { redirect_to product_cards_path, status: :see_other, notice: "Product card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_card
      @product_card = ProductCard.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def product_card_params
      params.require(:product_card).permit(:title, :description, :image)
    end
    
end
