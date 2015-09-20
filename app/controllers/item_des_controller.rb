class ItemDesController < ApplicationController
  before_action :set_item_de, only: [:show, :edit, :update, :destroy]

  # GET /item_des
  # GET /item_des.json
  def index
    
    @item_des = ItemDe.all
  end

  # GET /item_des/1
  # GET /item_des/1.json
  def show
  end

  # GET /item_des/new
  def new
    @item_de = ItemDe.new
  end

  # GET /item_des/1/edit
  def edit
  end

  # POST /item_des
  # POST /item_des.json
  def create
    @item_de = ItemDe.new(item_de_params)

    respond_to do |format|
      if @item_de.save
        format.html { redirect_to @item_de, notice: 'Item de was successfully created.' }
        format.json { render :show, status: :created, location: @item_de }
      else
        format.html { render :new }
        format.json { render json: @item_de.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_des/1
  # PATCH/PUT /item_des/1.json
  def update
    respond_to do |format|
      if @item_de.update(item_de_params)
        format.html { redirect_to @item_de, notice: 'Item de was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_de }
      else
        format.html { render :edit }
        format.json { render json: @item_de.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_des/1
  # DELETE /item_des/1.json
  def destroy
    @item_de.destroy
    respond_to do |format|
      format.html { redirect_to item_des_url, notice: 'Item de was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_de
      @item_de = ItemDe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_de_params
      params.require(:item_de).permit(:title, :unit)
    end
end
