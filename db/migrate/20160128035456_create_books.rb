class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :estc_cit_number
      t.string :author_name
      t.string :author_titles_etc
      t.string :author_dates
      t.string :corporate_author
      t.string :corporate_author_specific
      t.string :main_title
      t.string :continuation_of_title
      t.string :publication_place
      t.string :imprint
      t.string :imprint_date
      t.string :pagination
      t.string :illustrations
      t.string :format
      t.string :pub_year
      t.string :bibliographic_citations

      t.timestamps
    end 
  end
end
