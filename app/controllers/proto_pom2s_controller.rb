class ProtoPom2sController < ApplicationController
  before_action :set_proto_pom2, only: [:show, :edit, :update, :destroy]

  # GET /proto_pom2s
  # GET /proto_pom2s.json
  def index
    @proto_pom2s = ProtoPom2.all
  end

  # GET /proto_pom2s/1
  # GET /proto_pom2s/1.json
  def show
  end

  # GET /proto_pom2s/new
  def new
    @proto_pom2 = ProtoPom2.new
  end

  # GET /proto_pom2s/1/edit
  def edit
  end

  # POST /proto_pom2s
  # POST /proto_pom2s.json
  def create
    @proto_pom2 = ProtoPom2.new(proto_pom2_params)

    respond_to do |format|
      if @proto_pom2.save
        format.html { redirect_to @proto_pom2, notice: 'Proto pom2 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @proto_pom2 }
      else
        format.html { render action: 'new' }
        format.json { render json: @proto_pom2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proto_pom2s/1
  # PATCH/PUT /proto_pom2s/1.json
  def update
    respond_to do |format|
      if @proto_pom2.update(proto_pom2_params)
        format.html { redirect_to @proto_pom2, notice: 'Proto pom2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @proto_pom2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proto_pom2s/1
  # DELETE /proto_pom2s/1.json
  def destroy
    @proto_pom2.destroy
    respond_to do |format|
      format.html { redirect_to proto_pom2s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proto_pom2
      @proto_pom2 = ProtoPom2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proto_pom2_params
      params.require(:proto_pom2).permit(:pp_vendor, :pp_end_date, :pp_start_date, :pp_arrival_date, :pp_notes, :pp_po_name, :pp_wholesale, :pp_retail, :pp_status)
    end
end
