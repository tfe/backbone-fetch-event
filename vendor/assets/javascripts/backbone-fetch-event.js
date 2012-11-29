// Patch Model and Collection so they emit a 'fetch' event when starting to fetch data
// http://tbranyen.com/post/how-to-indicate-backbone-fetch-progress
_.each(["Model", "Collection"], function(name) {
  // Cache Backbone constructor.
  var ctor = Backbone[name];
  // Cache original fetch.
  var fetch = ctor.prototype.fetch;

  // Override the fetch method to emit a fetch event.
  ctor.prototype.fetch = function() {
    // Trigger the fetch event on the instance.
    this.trigger("fetch", this);

    // Pass through to original fetch.
    return fetch.apply(this, arguments);
  };
});
