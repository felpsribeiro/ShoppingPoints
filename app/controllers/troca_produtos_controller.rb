class TrocaProdutosController < ApplicationController
  before_action :set_troca_produto, only: %i[ show edit update destroy ]

  # GET /troca_produtos or /troca_produtos.json
  def index
    @troca_produtos = TrocaProduto.all
  end

  # GET /troca_produtos/1 or /troca_produtos/1.json
  def show
  end

  # GET /troca_produtos/new
  def new
    @troca_produto = TrocaProduto.new
    @produtos = Produto.order(:nome)
    @clientes = Cliente.order(:nome)
  end

  # GET /troca_produtos/1/edit
  def edit
  end

  # POST /troca_produtos or /troca_produtos.json
  def create
    @troca_produto = TrocaProduto.new(troca_produto_params)

    respond_to do |format|
      if @troca_produto.save
        format.html { redirect_to @troca_produto, notice: "Troca produto was successfully created." }
        format.json { render :show, status: :created, location: @troca_produto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @troca_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /troca_produtos/1 or /troca_produtos/1.json
  def update
    respond_to do |format|
      if @troca_produto.update(troca_produto_params)
        format.html { redirect_to @troca_produto, notice: "Troca produto was successfully updated." }
        format.json { render :show, status: :ok, location: @troca_produto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @troca_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /troca_produtos/1 or /troca_produtos/1.json
  def destroy
    @troca_produto.destroy
    respond_to do |format|
      format.html { redirect_to troca_produtos_url, notice: "Troca produto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_troca_produto
      @troca_produto = TrocaProduto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def troca_produto_params
      params.require(:troca_produto).permit(:cliente_id, :produto_id, :estado)
    end
end
