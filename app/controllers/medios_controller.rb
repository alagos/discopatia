class MediosController < ApplicationController
  # GET /medios
  # GET /medios.xml
  def index
    @medios = Medio.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @medios }
    end
  end

  # GET /medios/1
  # GET /medios/1.xml
  def show
    @medio = Medio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @medio }
    end
  end

  # GET /medios/new
  # GET /medios/new.xml
  def new
    @medio = Medio.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @medio }
    end
  end

  # GET /medios/1/edit
  def edit
    @medio = Medio.find(params[:id])
  end

  # POST /medios
  # POST /medios.xml
  def create
    @medio = Medio.new(params[:medio])

    respond_to do |format|
      if @medio.save
        flash[:notice] = 'Medio was successfully created.'
        format.html { redirect_to(@medio) }
        format.xml  { render :xml => @medio, :status => :created, :location => @medio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @medio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /medios/1
  # PUT /medios/1.xml
  def update
    @medio = Medio.find(params[:id])

    respond_to do |format|
      if @medio.update_attributes(params[:medio])
        flash[:notice] = 'Medio was successfully updated.'
        format.html { redirect_to(@medio) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @medio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /medios/1
  # DELETE /medios/1.xml
  def destroy
    @medio = Medio.find(params[:id])
    @medio.destroy

    respond_to do |format|
      format.html { redirect_to(medios_url) }
      format.xml  { head :ok }
    end
  end
end
