####Development 
<pre><code># Start SOLR service either in the background  
rake sunspot:solr:start  

# or foreground  
rake sunspot:solr:run 

# Initialize the database (requires non-public tsv)  
rake db:drop db:create db:migrate db:seed  

# Index records in SOLR database  
rake sunspot:solr:reindex  

# Set the development email client password  
sed -i '' 's/PASSWORD_PLACEHOLDER/{{TheRealPassword}}/g' "config/environments/development.rb"  

# If necessary, visit https://accounts.google.com/DisplayUnlockCaptcha
# to grant email client permission to send emails
</code></pre>

