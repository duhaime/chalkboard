####Initialize the database  
<pre><code># Create database (requires non-public tsv)  
rake db:drop db:create db:migrate db:seed</code></pre>

####Start the SOLR service  
<pre><code># Start SOLR service either in the background  
rake sunspot:solr:start  

# or foreground  
rake sunspot:solr:run 

# Index records in SOLR database  
rake sunspot:solr:reindex</code></pre>

####Establish the email client
<pre><code>#Set the development email client password  
sed -i '' 's/PASSWORD_PLACEHOLDER/{{TheRealPassword}}/g' "config/environments/development.rb"  

# If necessary, visit https://accounts.google.com/DisplayUnlockCaptcha
# to grant gmail client permission to send emails
</code></pre>

