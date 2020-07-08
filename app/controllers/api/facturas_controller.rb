class Api::FacturasController < ApplicationController
  before_action :set_factura, only: [:show, :update, :destroy]

  # GET /facturas
  def index
    @facturas = Factura.all

    render json: @facturas
  end

  # GET /facturas/1
  def show
    render json: @factura
  end

  # POST /facturas
  def create
    @factura = Factura.new(factura_params)

    if @factura.save
      render json: @factura, status: :created, location: @factura
    else
      render json: @factura.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /facturas/1
  def update
    if @factura.update(factura_params)
      render json: @factura
    else
      render json: @factura.errors, status: :unprocessable_entity
    end
  end

  # DELETE /facturas/1
  def destroy
    @factura.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_factura
      @factura = Factura.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def factura_params
      params.fetch(:factura, {})
    end
end
