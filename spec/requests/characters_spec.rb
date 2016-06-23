require 'rails_helper'

RSpec.describe 'characters' do
  def user_params
    {
      email: 'alice@example.com',
      password: 'foobarbaz',
      password_confirmation: 'foobarbaz'
    }
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

  def user
    User.first
  end

  def character
    Character.first
  end

  before(:all) do
    User.create!(user_params)
    user.characters << Character.create!(character_params)
  end

  after(:all) do
    User.destroy_all
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
        get "/characters/1"

        expect(response).to be_success

        # character_response = JSON.parse(response.body)
        # expect(character_response['id']).to eq(character.id)
        # expect(character_response['user_id']).to eq(character.user_id)
      end
    end
  end

  skip 'POST /characters' do
    it 'creates a new character' do
      post '/characters', credentials: character_params

      expect(response).to be_success
      #
      # parsed_response = JSON.parse(response.body)
      # expect(
      #   parsed_response['character']['user_id']
      # ).to eq(character_params[:user_id])
    end
  end

  skip 'PATCH /characters/:id' do
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

  skip 'DELETE /characters/:id' do
    it 'deletes a character' do
      delete "/characters/#{character.id}", nil, headers

      expect(response).to be_success
      expect(response.body).to be_empty
    end
  end
end
