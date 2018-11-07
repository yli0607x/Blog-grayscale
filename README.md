In this tutorial, I will show you how to configure your Ruby on Rails files to get started with Bootstrap easily in a way that optimizes your web app’s performance. In this tutorial, I will be using the Start Bootstrap Grayscale theme.

1. Create a new project called grayscale using rails and navigate into the project folder

rails new grayscale
cd grayscale

2. Open the project in a text editor and insert the following code into the header section of app/views/layouts/application.html.erb

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
You can read more about getting started with bootstrap here

3. Install Bootstrap and Jquery-rails gems

Add the following gems into your Gemfile:

gem 'jquery-rails'
gem 'bootstrap-sass'

As Javascript in Bootstrap is dependent on JQuery, you need to include the jquery-rails gem as well.

4. Rename app/assets/stylesheets/application.css to /application.css.scss

Import Bootstrap styles in /application.css.scss

@import "bootstrap-sprockets";
@import "bootstrap";

We are using sass syntax@import because it helps optimize the performance of your website by compiling the CSS into one file that is served to the browser.

CSS has an import option that lets you split your CSS into smaller, more maintainable portions. The only drawback is that each time you use @import in CSS it creates another HTTP request. Sass builds on top of the current CSS @import but instead of requiring an HTTP request, Sass will take the file that you want to import and combine it with the file you're importing into so you can serve a single CSS file to the web browser.
 — Sass Guide: Import
5. Add Bootstrap dependencies and Bootstrap to your app/assets/javascripts/application.js

//= require jquery3
//= require bootstrap
6. Runbundle installor you can be extra lazy and just run bundle

7. Create a controller and an index page in the terminal

rails generate controller grayscale index

8. Open the live preview of Grayscale theme https://blackrockdigital.github.io/startbootstrap-grayscale/ and right click into View Page Source

9. Go back to text editor and edit app/views/layouts/application.html.erb

Insert the following section of the code accordingly

<!-- Bootstrap core CSS -->
<!-- Custom fonts for this template -->
<!-- Custom styles for this template -->
<!-- Navigation -->
<%= yield %>
<!-- Footer -->
<!-- Bootstrap core JavaScript -->
<!-- Plugin JavaScript -->
<!-- Custom scripts for this template -->
Anything in app/views/layouts/application.html.erbwill be displayed across all pages.


9. Edit app/views/grayscale/index.html.erb

Insert the all sections from Headerto Contact Sectionaccordingly

<!-- Header -->
|
|
|
<!-- Contact Section -->
10. Rename some routes

Since I didn’t download the image, vendor, css and js file locally, I will need to reroute some path in order for the page to display correctly.

Every time there isimg/, vender/, css/or js/ , add http://blackrockdigital.github.io/startbootstrap-grayscale/ in front of the path.

11. Finally, we can run rails s to start the server and open http://localhost:3000/grayscale/index in the browser.


