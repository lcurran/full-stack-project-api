require 'rails_helper'

RSpec.describe 'characters' do
  def character_params
    Character.first
  end

  def character_params
    {
      user_id: '1',
      name: 'Mal Reynolds',
      race: 'Human',
      deity: 'open skies',
      alignment: 'Chaotic Good',
      currency: '142.50',
      age: '31',
      gender: 'm'
    }
  end

  before(:all) do
    Character.create!(character_params)
  end

  after(:all) do
    Character.delete_all
  end

  context 'existing characters' do
    describe 'GET /characters' do
      it 'lists all characters for a user' do
        get '/characters'

        expect(response).to be_success

        # character_response = JSON.parse(response.body)
        # expect(character_response['user_id']).to eq(character.user_id)
      end
    end

    describe 'GET /characters/:id' do
      it 'shows one character' do
        get "/characters/#{character.id}"

        expect(response).to be_success

        # character_response = JSON.parse(response.body)
        # expect(character_response['id']).to eq(character.id)
        # expect(character_response['user_id']).to eq(character.user_id)
      end
    end
  end

  describe 'POST /new-character' do
    it 'creates a new character' do
      post '/new-character', credentials: character_params

      expect(response).to be_success
      #
      # parsed_response = JSON.parse(response.body)
      # expect(
      #   parsed_response['character']['user_id']
      # ).to eq(character_params[:user_id])
    end
  end

  describe 'PATCH /characters/:id' do
    def character_diff
      { name: 'Wash' }
    end

    it 'updates a character' do
      patch "/characters/#{character.id}", { character: character_diff }, headers

      expect(response).to be_success

      # character_response = JSON.parse(response.body)
      # expect(character_response['id']).to eq(character.id)
      # expect(character_response['name']).to eq(character_diff[:name])
    end
  end

  describe 'DELETE /characters/:id' do
    it 'deletes a character' do
      delete "/characters/#{character.id}", nil, headers

      expect(response).to be_success
      expect(response.body).to be_empty
    end
  end
end
