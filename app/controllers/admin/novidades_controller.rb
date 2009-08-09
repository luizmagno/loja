class Admin::NovidadesController < Admin::BaseController
resource_controller
  # GET /novidades
  # GET /novidades.xml
  def index
    @novidades = Novidade.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @novidades }
    end
  end

  # GET /novidades/1
  # GET /novidades/1.xml
  def show
    @novidade = Novidade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @novidade }
    end
  end

  # GET /novidades/new
  # GET /novidades/new.xml
  def new
    @novidade = Novidade.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @novidade }
    end
  end

  # GET /novidades/1/edit
  def edit
    @novidade = Novidade.find(params[:id])
  end

  # POST /novidades
  # POST /novidades.xml
  def create
    @novidade = Novidade.new(params[:novidade])

    respond_to do |format|
      if @novidade.save
        flash[:notice] = 'Novidade was successfully created.'
        format.html { redirect_to(@novidade) }
        format.xml  { render :xml => @novidade, :status => :created, :location => @novidade }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @novidade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /novidades/1
  # PUT /novidades/1.xml
  def update
    @novidade = Novidade.find(params[:id])

    respond_to do |format|
      if @novidade.update_attributes(params[:novidade])
        flash[:notice] = 'Novidade was successfully updated.'
        format.html { redirect_to(@novidade) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @novidade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /novidades/1
  # DELETE /novidades/1.xml
  def destroy
    @novidade = Novidade.find(params[:id])
    @novidade.destroy

    respond_to do |format|
      format.html { redirect_to(novidades_url) }
      format.xml  { head :ok }
    end
  end
end
