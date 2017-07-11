class ProductosDetallesController < ApplicationController
  before_action :set_producto_detalle, only: [:show, :edit, :update, :destroy]

  # GET /productos_detalles
  # GET /productos_detalles.json
  def index
    @productos_detalles = ProductoDetalle.all
  end

  # GET /productos_detalles/1
  # GET /productos_detalles/1.json
  def show
  end

  # GET /productos_detalles/new
  def new
    @producto_detalle = ProductoDetalle.new
  end

  # GET /productos_detalles/1/edit
  def edit
  end

  # POST /productos_detalles
  # POST /productos_detalles.json
  def create
    @producto_detalle = ProductoDetalle.new(producto_detalle_params)

    respond_to do |format|
      if @producto_detalle.save
        format.html { redirect_to @producto_detalle, notice: 'Producto detalle was successfully created.' }
        format.json { render :show, status: :created, location: @producto_detalle }
      else
        format.html { render :new }
        format.json { render json: @producto_detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productos_detalles/1
  # PATCH/PUT /productos_detalles/1.json
  def update
    respond_to do |format|
      if @producto_detalle.update(producto_detalle_params)
        format.html { redirect_to @producto_detalle, notice: 'Producto detalle was successfully updated.' }
        format.json { render :show, status: :ok, location: @producto_detalle }
      else
        format.html { render :edit }
        format.json { render json: @producto_detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productos_detalles/1
  # DELETE /productos_detalles/1.json
  def destroy
    @producto_detalle.destroy
    respond_to do |format|
      format.html { redirect_to productos_detalles_url, notice: 'Producto detalle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto_detalle
      @producto_detalle = ProductoDetalle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_detalle_params
      params.require(:producto_detalle).permit(:precio_compra, :fecha_compra, :proveedor_id, :producto_id)
    end
end
