class Admin::InformationController < Admin::ApplicationController
  # GET /information
  # GET /information.json
  def index
    @information = Information.all
  end

  # GET /information/1
  # GET /information/1.json
  def show
    @information = Information.find(params[:id])
  end

  # GET /information/new
  # GET /information/new.json
  def new
    @information = Information.new
  end

  # GET /information/1/edit
  def edit
    @information = Information.find(params[:id])
  end

  # POST /information
  # POST /information.json
  def create
    @information = Information.new(params[:information])

    if @information.save
      return redirect_to admin_information_index_url, notice: 'Information was successfully created.'
    else
      return render action: "new"
    end
  end

  # PUT /information/1
  # PUT /information/1.json
  def update
    @information = Information.find(params[:id])

    if @information.update_attributes(params[:information])
      return redirect_to admin_information_index_url, notice: 'Information was successfully updated.'
    else
      return render action: "edit"
    end
  end

  # DELETE /information/1
  # DELETE /information/1.json
  def destroy
    @information = Information.find(params[:id])
    @information.destroy

    return redirect_to admin_information_index_url
  end
end
