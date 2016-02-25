$(document).ready(function() {
  // Create a new Bloodhound suggestion engine.
  books = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('value'),
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    remote: {
      // The controller of this path will do a search through
      // Apache Solr and it returns the data in the required format.
      // The %QUERY will be replaced by the Bloodhound engine
      // with the search terms we typed in the search box.
      url: '/search/query?q=%QUERY'
    }
  })

  // Initialize the engine
  books.initialize()
 
  // Transform the input box to a typeahead search field.
  // The first parameter is an options object.
  // Typeahead can be customized by this object.
  // More information can be found at:
  // https://github.com/twitter/typeahead.js/blob/master/doc/jquery_typeahead.md#options
  // The second parameter is a dataset that provides data filtered
  // by the search term we typed into the search box.
  $('input.typeahead').typeahead(
    {
      hint: true,
      highlight: true,
      minLength: 1
    },
    {
      // Name of the dataset
      name: 'books',
      // The key of the value in the response.
      // This value will be displayed as suggestion.
      displayKey: 'main_title',
      // The source of the dataset is the Bloodhound engine.
      source: books.ttAdapter()
  })

  // log selected record
  $('input.typeahead').on('typeahead:selected', function (e, datum) {
    console.log(datum);
  });
  // log selected record
  $('input.typeahead').on('change', function (e, datum) {
    console.log(datum);
  });

});