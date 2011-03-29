class DiscosController < ApplicationController
  # GET /discos
  # GET /discos.xml
  def index
    @discos = Disco.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @discos }
    end
  end

  # GET /discos/1
  # GET /discos/1.xml
  def show
    @disco = Disco.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @disco }
    end
  end

  # GET /discos/new
  # GET /discos/new.xml
  def new
    @disco = Disco.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @disco }
    end
  end

  # GET /discos/1/edit
  def edit
    @disco = Disco.find(params[:id])
  end

  # POST /discos
  # POST /discos.xml
  def create
    @disco = Disco.new(params[:disco])

    respond_to do |format|
      if @disco.save
        flash[:notice] = 'Disco was successfully created.'
        format.html { redirect_to(@disco) }
        format.xml  { render :xml => @disco, :status => :created, :location => @disco }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @disco.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /discos/1
  # PUT /discos/1.xml
  def update
    @disco = Disco.find(params[:id])

    respond_to do |format|
      if @disco.update_attributes(params[:disco])
        flash[:notice] = 'Disco was successfully updated.'
        format.html { redirect_to(@disco) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @disco.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /discos/1
  # DELETE /discos/1.xml
  def destroy
    @disco = Disco.find(params[:id])
    @disco.destroy

    respond_to do |format|
      format.html { redirect_to(discos_url) }
      format.xml  { head :ok }
    end
  end
end
