class ArtistasController < ApplicationController
  # GET /artistas
  # GET /artistas.xml
  def index
    @artistas = Artista.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @artistas }
    end
  end

  # GET /artistas/1
  # GET /artistas/1.xml
  def show
    @artista = Artista.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @artista }
    end
  end

  # GET /artistas/new
  # GET /artistas/new.xml
  def new
    @artista = Artista.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @artista }
    end
  end

  # GET /artistas/1/edit
  def edit
    @artista = Artista.find(params[:id])
  end

  # POST /artistas
  # POST /artistas.xml
  def create
    @artista = Artista.new(params[:artista])

    respond_to do |format|
      if @artista.save
        flash[:notice] = 'Artista was successfully created.'
        format.html { redirect_to(@artista) }
        format.xml  { render :xml => @artista, :status => :created, :location => @artista }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @artista.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /artistas/1
  # PUT /artistas/1.xml
  def update
    @artista = Artista.find(params[:id])

    respond_to do |format|
      if @artista.update_attributes(params[:artista])
        flash[:notice] = 'Artista was successfully updated.'
        format.html { redirect_to(@artista) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @artista.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /artistas/1
  # DELETE /artistas/1.xml
  def destroy
    @artista = Artista.find(params[:id])
    @artista.destroy

    respond_to do |format|
      format.html { redirect_to(artistas_url) }
      format.xml  { head :ok }
    end
  end
end
