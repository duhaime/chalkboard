class SearchController < ApplicationController
  def index
  end

  def query
    # Get the search terms from the q parameter and do a search
    # as we seen in the previous part of the article.
    search = Book.search do
      fulltext params[:q] # Full text search
    end

    respond_to do |format|
      
      format.json do
        # Create an array from the search results.
        results = search.results.map do |book|
          # Each element will be a hash containing only the title of the article.
          # The title key is used by typeahead.js.
          { main_title: book.main_title }
        end
        render json: results
      end
    end
  end

end
