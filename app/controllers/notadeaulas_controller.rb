class NotadeaulasController < ApplicationController
  before_action :set_notadeaula, only: [:show, :edit, :update, :destroy]

  # GET /notadeaulas
  # GET /notadeaulas.json
  def index
    @notadeaulas = Notadeaula.all
  end

  # GET /notadeaulas/1
  # GET /notadeaulas/1.json
  def show
  end

  # GET /notadeaulas/new
  def new
    @notadeaula = Notadeaula.new
  end

  # GET /notadeaulas/1/edit
  def edit
  end

  # POST /notadeaulas
  # POST /notadeaulas.json
  def create
    @notadeaula = Notadeaula.new(notadeaula_params)

    respond_to do |format|
      if @notadeaula.save
        format.html { redirect_to @notadeaula, notice: 'Notadeaula was successfully created.' }
        format.json { render :show, status: :created, location: @notadeaula }
      else
        format.html { render :new }
        format.json { render json: @notadeaula.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notadeaulas/1
  # PATCH/PUT /notadeaulas/1.json
  def update
    respond_to do |format|
      if @notadeaula.update(notadeaula_params)
        format.html { redirect_to @notadeaula, notice: 'Notadeaula was successfully updated.' }
        format.json { render :show, status: :ok, location: @notadeaula }
      else
        format.html { render :edit }
        format.json { render json: @notadeaula.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notadeaulas/1
  # DELETE /notadeaulas/1.json
  def destroy
    @notadeaula.destroy
    respond_to do |format|
      format.html { redirect_to notadeaulas_url, notice: 'Notadeaula was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notadeaula
      @notadeaula = Notadeaula.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notadeaula_params
      params.require(:notadeaula).permit(:autor, :disciplina, :ano, :semestre, :data, :titulo, :texto)
    end
end
