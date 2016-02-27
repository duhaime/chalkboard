###Quickstart

Create database (requires non-public tsv):  
`rake db:drop db:create db:migrate db:seed`

Start SOLR service either in the background or foreground:   
background: `rake sunspot:solr:start`  
foreground: `rake sunspot:solr:run`  

Index records in SOLR database:   
`rake sunspot:solr:reindex`

