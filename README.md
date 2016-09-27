# SolrAutoComplete

This Project shows how to use apache solr and jquery to provide auto complete suggestions when user enters something in the search box.

Step 1: Download Apache Solr and extract it to any folder you want. <br>
Step 2: Go to Solr/bin in cmd in windows or terminal in mac and run the command <code>solr start <code> and go to localhost:8983 (or what ever port displayed in console) to see the solr control pannel <br>
Step 3: Create a core in solr using the command <code>solr create -c CORE_NAME -d basic_configs <code> <br>
Step 4: Edit the schema file in your core folder at \server\solr\CORE_NAME\conf to add fields which you want to index below the uniqueId filed in that file like <code> <field name="name" type="text_general" indexed="true" stored="true"/> <code>. <br>
Here I am taking the books.csv provided by solr in the example/exampledocs folder. <br>
Step 5: Restart the solr server by executing <code>solr stop -all <code> and <code>solr start <code> in the cmd prompt. <br> 
Step 6: Index the books.csv to use it for searching using the command <code> java -Dtype=text/csv -Durl=http://localhost:8983/solr/CORE_NAME/update -jar post.jar  books.csv<code> after navigating to /example/exampledocs. <br>
Step 7: Create web application in eclipse or any IDE of your choice. I used maven's web app archetype to make it simple. <br>
Step 8: Add the code for the search box and script for jquery Auto complete (check index.jsp file for the code). <br>
Step 9: Run the application and try to search !!! Happy Searching !!! <br>
