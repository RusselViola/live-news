class Api::SourcesController < ApiController

  def index

    @categories = [
      'Business',
      'Entertainment',
      'Gaming',
      'General',
      'Music',
      'Science / Nature',
      'Sports',
      'Tech'
    ]
    respond_to do |format|
      format.json do
        render json: @categories
      end
    end
  end

end
