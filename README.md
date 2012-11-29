# backbone-fetch-event

Patches Backbone's Model and Collection to fire a `fetch` event when starting a fetch operation.
Useful for showing a loading indicator while data is being retrieved.

Original blog post and code: [http://tbranyen.com/post/how-to-indicate-backbone-fetch-progress](http://tbranyen.com/post/how-to-indicate-backbone-fetch-progress)

This gem makes it easy to include in Rails 3.1 projects using the asset pipeline. It just bundles
the JavaScript file and makes it available to your application.


## Installation

Add this line to your application's `Gemfile`:

    gem 'backbone-fetch-event'

Then require it somewhere, e.g. `app/assets/javascripts/application.js`:

    //= require backbone-fetch-event


## Usage

Just bind to the `fetch` event on a model or collection. A view that shows a spinner whenever its
collection is being fetched might look like this:

    Repos.Views.List = Backbone.View.extend({
      initialize: function () {
        // Display a loading indication whenever the Collection is fetching.
        this.collection.on("fetch", function () {
          this.html("<img src='/assets/img/spinner.gif'>");
        }, this);
      }
    });


## Contributors

  - [Tim Branyen](http://tbranyen.com): original idea and code
  - [Todd Eichel](http://toddeichel.com): packaging for the Rails asset pipeline

