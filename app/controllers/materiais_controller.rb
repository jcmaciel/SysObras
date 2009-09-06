class MateriaisController < ApplicationController
  # GET /materiais
  # GET /materiais.xml
  def index
    @materiais = Material.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @materiais }
    end
  end

  # GET /materiais/1
  # GET /materiais/1.xml
  def show
    @material = Material.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @material }
    end
  end

  # GET /materiais/new
  # GET /materiais/new.xml
  def new
    @material = Material.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @material }
    end
  end

  # GET /materiais/1/edit
  def edit
    @material = Material.find(params[:id])
  end

  # POST /materiais
  # POST /materiais.xml
  def create
    @material = Material.new(params[:material])

    respond_to do |format|
      if @material.save
        flash[:notice] = 'Material was successfully created.'
        format.html { redirect_to(@material) }
        format.xml  { render :xml => @material, :status => :created, :location => @material }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @material.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /materiais/1
  # PUT /materiais/1.xml
  def update
    @material = Material.find(params[:id])

    respond_to do |format|
      if @material.update_attributes(params[:material])
        flash[:notice] = 'Material was successfully updated.'
        format.html { redirect_to(@material) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @material.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /materiais/1
  # DELETE /materiais/1.xml
  def destroy
    @material = Material.find(params[:id])
    @material.destroy

    respond_to do |format|
      format.html { redirect_to(materiais_url) }
      format.xml  { head :ok }
    end
  end
end

