class StrainsController < ApplicationController

  def index

  end

  # def lineage
  #   lineage.fetch(:key) { "key" }
  # end
    def lineage
     @lineage = lineage
    end

  def show
    puts params[:id]
    url = "http://api.leoqz.me/api/strains?symptom=" + params[:id]
    response = HTTParty.get(url)
    # json_data = JSON.parse(response.body)
    @strains = response["data"]
  end

  def plant
    url = "http://api.leoqz.me/api/strain/" + params[:ucpc]
    response = HTTParty.get(url)
    # json_data = JSON.parse(response.body)
    @strains = response["data"]
  end

end
