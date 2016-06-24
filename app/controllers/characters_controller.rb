class CharactersController < ProtectedController
  before_action :set_character, only: [:show, :update, :destroy]
  skip_before_action :authenticate, only: [:show]

  # GET /characters
  # GET /characters.json
  def index
      @characters = current_user.characters.all
      render json: @characters
  end

  # GET /characters/1
  # GET /characters/1.json
  def show
    render json: @character
  end

  # POST /characters
  # POST /characters.json
  def create
    @character = Character.new(character_params)

    if @character.save
      render json: @character, status: :created, location: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /characters/1
  # PATCH/PUT /characters/1.json
  def update
    @character = Character.find(params[:id])

    if @character.update(character_params)
      head :no_content
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    @character.destroy

    head :no_content
  end

  private

    def set_character
      @character = Character.find(params[:id])
    end

    def character_params
      params.require(:character).permit(:user_id, :name, :race, :deity, :alignment, :gender, :age, :currency)
    end
end
