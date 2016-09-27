<html>
<head>
<link
	href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet"></link>

<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"></script>

<script>
	$(function() {
		var URL_PREFIX = "http://localhost:8983/solr/jcg/select?q=name:";
		var URL_SUFFIX = "&wt=json";
		$("#searchBox").autocomplete({
			source : function(request, response) {
				var URL = URL_PREFIX + $("#searchBox").val() + URL_SUFFIX;
				$.ajax({
					url : URL,
					success : function(data) {
						var docs = JSON.stringify(data.response.docs);
						console.log("data.Response is : "+ data.response)
						console.log("Documents are : " + docs);
						var jsonData = JSON.parse(docs);
						response($.map(jsonData, function(value, key) {
							return {
								label : value.name
							}
						}));
					},
					dataType : 'jsonp',
					jsonp : 'json.wrf'
				});
			},
			minLength : 1
		})
	});
</script>

</head>
<body>
	<h2>Solr Auto Complete Demo by Vamsi</h2>
	<p>Type something to search for it !!</p>
	<label for="searchBox">Tags: </label> <input id="searchBox"></input>


</body>
</html>
