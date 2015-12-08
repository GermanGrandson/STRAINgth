class SymptomsController < ApplicationController
  def index
  end

  #Method for getting list of strains
  private
    def find_strains(symptom)
      url = "http://api.leoqz.me/api/strains?symptom=#{symptom}"
      response = HTTParty.get(url)
      @strains = response["data"]
    end

end
