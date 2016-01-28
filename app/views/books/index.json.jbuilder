json.array!(@books) do |book|
  json.extract! book, :id, :estc_cit_number, :author_name, :author_titles_etc, :author_dates, :corporate_author, :corporate_author_specific, :main_title, :continuation_of_title, :publication_place, :imprint, :imprint_date, :pagination, :illustrations, :format, :pub_year, :bibliographic_citations
  json.url book_url(book, format: :json)
end
