class WorkbooksController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_workbook, only: [:show, :edit, :update, :destroy]

  # GET /workbooks
  # GET /workbooks.json
  def index
    @workbooks = Workbook.all
  end

  # GET /workbooks/1
  # GET /workbooks/1.json
  def show
  end

  # GET /workbooks/new
  def new
    @workbook = Workbook.new
  end

  # GET /workbooks/1/edit
  def edit
  end

  # POST /workbooks
  # POST /workbooks.json
  def create
    @workbook = Workbook.new(workbook_params)

    respond_to do |format|
      if @workbook.save
        format.html { redirect_to @workbook, notice: 'Workbook was successfully created.' }
        format.json { render :show, status: :created, location: @workbook }
      else
        format.html { render :new }
        format.json { render json: @workbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workbooks/1
  # PATCH/PUT /workbooks/1.json
  def update
    respond_to do |format|
      if @workbook.update(workbook_params)
        format.html { redirect_to @workbook, notice: 'Workbook was successfully updated.' }
        format.json { render :show, status: :ok, location: @workbook }
      else
        format.html { render :edit }
        format.json { render json: @workbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workbooks/1
  # DELETE /workbooks/1.json
  def destroy
    @workbook.destroy
    respond_to do |format|
      format.html { redirect_to workbooks_url, notice: 'Workbook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workbook
      @workbook = Workbook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workbook_params
      params.require(:workbook).permit(:title, :clientid, :memberid, :formid, :formver, :q001section, :q001qlong, :q001qshort, :q001qatext, :user_id)
    end
end
