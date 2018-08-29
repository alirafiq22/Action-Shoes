class CategoryMastersController < ApplicationController
  # GET /category_masters
  # GET /category_masters.json
  
  def import_cat
   a=10
  end
  
  def import
    #@category_master.destroy  #truncate DB
    
    CategoryMaster.import(params[:file])
    redirect_to root_url, notice: 'Products imported.'
  end
  
  def index
    #not_status = 'Non Running'
    #@category_masters = CategoryMaster.all
    #@category_masters = CategoryMaster.where.not(:AK_Status => 'Non Running')
     #@category_masters = CategoryMaster.where.not(CategoryMaster.arel_table[:AK_Status].not_eq('Non Running'))
    @category_masters = CategoryMaster.where('Ak_Status != ? and ImageURL != ?', 'Non Running', '#N/A')
      
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @category_masters }
    end
  end

  # GET /category_masters/1
  # GET /category_masters/1.json
  def show
    @category_master = CategoryMaster.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @category_master }
    end
  end

  # GET /category_masters/new
  # GET /category_masters/new.json
  def new
    @category_master = CategoryMaster.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @category_master }
    end
  end

  # GET /category_masters/1/edit
  def edit
    @category_master = CategoryMaster.find(params[:id])
  end

  # POST /category_masters
  # POST /category_masters.json
  def create
    @category_master = CategoryMaster.new(params[:category_master])

    respond_to do |format|
      if @category_master.save
        format.html { redirect_to @category_master, notice: 'Category master was successfully created.' }
        format.json { render json: @category_master, status: :created, location: @category_master }
      else
        format.html { render action: "new" }
        format.json { render json: @category_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /category_masters/1
  # PUT /category_masters/1.json
  def update
    @category_master = CategoryMaster.find(params[:id])

    respond_to do |format|
      if @category_master.update_attributes(params[:category_master])
        format.html { redirect_to @category_master, notice: 'Category master was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @category_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_masters/1
  # DELETE /category_masters/1.json
  def destroy
    @category_master = CategoryMaster.find(params[:id])
    @category_master.destroy

    respond_to do |format|
      format.html { redirect_to category_masters_url }
      format.json { head :no_content }
    end
  end
end
