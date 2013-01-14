function parseQueryFromUrl () {
	var queryParamName = "q";
	var search = window.location.hash.substr(1);
	var parts = search.split('&');
	for (var i = 0; i < parts.length; i++) {
		var keyvaluepair = parts[i].split('=');
		if (decodeURIComponent(keyvaluepair[0]) == queryParamName) {
			return decodeURIComponent(keyvaluepair[1].replace(/\+/g, ' '));
		}
	}
	return '';
}

google.load('search', '1', {language : 'en'});

google.setOnLoadCallback(function() {
	var sidebarSearchControl = new google.search.CustomSearchControl('010293629468489459149:1r0de4gmuau');
	var resultsSearchControl = new google.search.CustomSearchControl('010293629468489459149:1r0de4gmuau');

	sidebarSearchControl.setResultSetSize(google.search.Search.FILTERED_CSE_RESULTSET);
	resultsSearchControl.setResultSetSize(google.search.Search.FILTERED_CSE_RESULTSET);

	var sidebarOptions = new google.search.DrawOptions();
	var resultsOptions = new google.search.DrawOptions();

	sidebarOptions.enableSearchboxOnly('/search', 'q', false, '#');
	resultsOptions.enableSearchResultsOnly();

	sidebarSearchControl.draw(document.getElementById('cse-search-form'), sidebarOptions);
	resultsSearchControl.draw(document.getElementById('cse-search-results'), resultsOptions);

	var queryFromUrl = parseQueryFromUrl();
	if (queryFromUrl) {
		sidebarSearchControl.prefillQuery(queryFromUrl);
		resultsSearchControl.execute(queryFromUrl);
	}
}, true);
