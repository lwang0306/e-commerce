class WelcomesController < ApplicationController
  before_action :set_welcome, only: [:show, :edit, :update, :destroy]

  def admin_page
    render 'admin_page', :layout => false
  end
  # GET /welcomes
  # GET /welcomes.json
  def index
    all_blogs = Blog.all
    @recent_blogs = []
    i = 0
    if (all_blogs.length > 0) then
      i = all_blogs.last().id
    end

    while (@recent_blogs.length < 6 && i >= 1)
      if (Blog.exists?(i)) then
        @recent_blogs << Blog.find(i)
      end
      i -= 1
    end
  end

  # GET /welcomes/1
  # GET /welcomes/1.json
  def show

  end

  def aboutus
    render 'about-us', :layout  => false
  end

  # GET /welcomes/new
  def new

  end

  # GET /welcomes/1/edit
  def edit
  end

  # POST /welcomes
  # POST /welcomes.json
  def create

  end

  # PATCH/PUT /welcomes/1
  # PATCH/PUT /welcomes/1.json
  def update


  end

  # DELETE /welcomes/1
  # DELETE /welcomes/1.json
  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_welcome
      # @welcome = Welcome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def welcome_params
      params[:welcome]
    end
end
