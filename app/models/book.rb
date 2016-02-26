class Book < ActiveRecord::Base
  searchable do
    text :estc_cit_number, :main_title

    string :estc_cit_number
    string :author_name
    string :author_titles_etc
    string :author_dates
    string :corporate_author
    string :corporate_author_specific
    string :main_title
    string :continuation_of_title
    string :publication_place
    string :imprint
    string :imprint_date
    string :pagination
    string :illustrations
    string :format
    string :pub_year
    string :bibliographic_citations

  end
end