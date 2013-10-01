class HospedesController < ApplicationController
  before_action :set_hospede, only: [:show, :edit, :update, :destroy]

  # GET /hospedes
  # GET /hospedes.json
  def index
    @hospedes = Hospede.all
  end

  # GET /hospedes/1
  # GET /hospedes/1.json
  def show
  end

  # GET /hospedes/new
  def new
    @hospede = Hospede.new
  end

  # GET /hospedes/1/edit
  def edit
  end

  # POST /hospedes
  # POST /hospedes.json
  def create
    @hospede = Hospede.new(hospede_params)

    respond_to do |format|
      if @hospede.save
        format.html { redirect_to @hospede, notice: 'Hospede was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hospede }
      else
        format.html { render action: 'new' }
        format.json { render json: @hospede.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hospedes/1
  # PATCH/PUT /hospedes/1.json
  def update
    respond_to do |format|
      if @hospede.update(hospede_params)
        format.html { redirect_to @hospede, notice: 'Hospede was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hospede.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hospedes/1
  # DELETE /hospedes/1.json
  def destroy
    @hospede.destroy
    respond_to do |format|
      format.html { redirect_to hospedes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hospede
      @hospede = Hospede.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hospede_params
      params.require(:hospede).permit(:cpf, :nome, :logradouro, :numero, :complemento, :bairro, :cidade, :estado)
    end
end
