require 'net/http'
require 'json'

class HomeController < ApplicationController
  CURRENCYS = ['USD-BRL', 'EUR-BRL', 'BTC-BRL']
  def index
    @chart_data = []
    #Get the data from the API AwesomeAPI
    #GET https://economia.awesomeapi.com.br/json/last/:moedas
    #GET https://economia.awesomeapi.com.br/json/daily/:moeda/:numero_dias
    #GET https://economia.awesomeapi.com.br/json/daily/:moeda/:numero_dias?start_date=20180901&end_date=20180930
    

    CURRENCYS.each do |currency|
      url = URI("https://economia.awesomeapi.com.br/json/daily/#{currency}/360")
      response = Net::HTTP.get(url)

      result = JSON.parse(response)
      hash ={}

      result.each do |key, value|
        #Trate timestamp in date
        timestamp = key['timestamp'].to_i
        date = Time.at(timestamp).to_date
        rate = key['high']

        hash[date] = rate

      end
    
      @chart_data << {name: currency, data: hash}
    end
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
