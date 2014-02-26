class InformationController < ApplicationController
  # GET /information
  # GET /information.json
  def index
    @information = Information.all
  end
end
