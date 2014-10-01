class NomesController < ApplicationController
  before_action :set_nome, only: [:show, :edit, :update, :destroy]

  # GET /nomes
  # GET /nomes.json
  def index
    @nomes = Nome.all
  end

  # GET /nomes/1
  # GET /nomes/1.json
  def show
  end

  # GET /nomes/new
  def new
    @nome = Nome.new
  end

  # GET /nomes/1/edit
  def edit
  end

  # POST /nomes
  # POST /nomes.json
  def create
    @nome = Nome.new(nome_params)

    respond_to do |format|
      if @nome.save
        format.html { redirect_to @nome, notice: 'Nome was successfully created.' }
        format.json { render :show, status: :created, location: @nome }
      else
        format.html { render :new }
        format.json { render json: @nome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nomes/1
  # PATCH/PUT /nomes/1.json
  def update
    respond_to do |format|
      if @nome.update(nome_params)
        format.html { redirect_to @nome, notice: 'Nome was successfully updated.' }
        format.json { render :show, status: :ok, location: @nome }
      else
        format.html { render :edit }
        format.json { render json: @nome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nomes/1
  # DELETE /nomes/1.json
  def destroy
    @nome.destroy
    respond_to do |format|
      format.html { redirect_to nomes_url, notice: 'Nome was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nome
      @nome = Nome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nome_params
      params.require(:nome).permit(:idade, :email, :msg)
    end
end
