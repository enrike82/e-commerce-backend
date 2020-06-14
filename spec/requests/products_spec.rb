require 'rails_helper'

RSpec.describe 'API Products', type: :request do
  context 'Cuando se envía el token de autorización' do
    before do
      Api::User.create(name: 'Test', email: 'test@email.com', password: 'secret')
      Api::Product.create(name: 'Concentrado para perros')
      Api::Product.create(name: 'Concentrado para gatos')
      Api::Product.create(name: 'Concentrado para aves')
    end

    let(:auth_token) do
      post '/api/authenticate', params: { email: 'test@email.com', password: 'secret' }
      JSON.parse(response.body)['auth_token']
    end

    it 'devuelve el total de productos almacenados en la base de datos' do
      get '/api/products', headers: { Authorization: auth_token }
      expect(JSON.parse(response.body).count).to eq(3)
    end

    it 'muestra el producto correspondiente a la búsqueda' do
      get '/api/products', headers: { Authorization: auth_token }, params: { name: 'ave' }
      expect(response.body).to match(/ave/)
    end
  end

  context 'cuando no se está autenticado' do
    it 'hace saber que no se está autorizado' do
      get '/api/products'
      expect(response).to have_http_status(:unauthorized)
    end
  end
end