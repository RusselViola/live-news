class Api::SourcesController < ApiController

  def index

    @categories = [
      'business',
      'entertainment',
      'gaming',
      'general',
      'music',
      'science-and-nature',
      'sports',
      'technology'
    ]
    respond_to do |format|
      format.json do
        render json: @categories
      end
    end
  end

end
