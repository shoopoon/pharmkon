class TopController < ApplicationController
  def index
    @information = Information.all
  end
end
