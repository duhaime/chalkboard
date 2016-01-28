# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# determine path to estc data from the root of the application
estc_path = File.join(Rails.root, "db", "estc/estc_streamlined_bib_data.tsv")

estc_records = File.open(estc_path,'r:UTF-8',&:read).split("\n")

estc_records.each do |record|
  rs = record.split("\t")

  # create a new db row for this record
  new_book = Book.new(:estc_cit_number => rs[0], :author_name => rs[1],
    :author_titles_etc => rs[2], :author_dates => rs[3],
    :corporate_author => rs[4], :corporate_author_specific => rs[5],
    :main_title => rs[6], :continuation_of_title => rs[7],
    :publication_place => rs[8], :imprint => rs[9],
    :imprint_date => rs[10], :pagination => rs[11], 
    :illustrations => rs[12], :format => rs[13], 
    :pub_year => rs[14], :bibliographic_citations => rs[15])

  # save the record
  new_book.save!
end
