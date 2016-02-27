###Quickstart

Create database (requires tsv that is not yet publically available):
`cp ~/Desktop/pq/analysis/data/estc/estc_bib_data/estc_streamlined_bib_data.tsv db/estc/estc_streamlined_bib_data.tsv` 
`rake db:drop db:create db:migrate db:seed`

Start SOLR service either in the background or foreground
background: `rake sunspot:solr:start`
foreground: `rake sunspot:solr:run`

Index records in SOLR database: `rake sunspot:solr:reindex`

