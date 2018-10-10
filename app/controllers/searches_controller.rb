class SearchesController < ApplicationController
  def search
  end

  def foursquare
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params[JVE02RQSIWRVS1UWEMTRYNG5EJTMRFQFMZPVIDONJZRWGL22] = client_id
      req.params[HA4UBRKJQQOSN0BXPLPJBWEJUOEWAC5A1P3OGMWHMVC4UGJJ] = client_secret
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
