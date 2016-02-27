class SearchController < ApplicationController
  def index
    search = Book.search do
      fulltext params[:q]
    end
    @search_results = retrieve_search_results(search)
  end


  def retrieve_search_results(search_instance)
    results = search_instance.results.map do |book|
      {main_title: book.main_title,
        estc_id: book.estc_cit_number}
    end
    return results
  end


  def query
    # As users type into the typeahead box, the [:q] param
    # will be updated so it includes the user-supplied text,
    # and the search object will be updated to contain all 
    # matching records
    search = Book.search do
      fulltext params[:q] # Full text search
    end

    respond_to do |format|
      format.json do

        # Create an array from the search results.
        results = search.results.map do |book|
          # Each element will be a hash containing 
          # the main title and estc id fields for the record
          { main_title: book.main_title,
            estc_id: book.estc_cit_number }
        end
        render json: results
      end
    end
  end

end
