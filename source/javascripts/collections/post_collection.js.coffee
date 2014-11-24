MyApp.Collections.Posts = Backbone.Collection.extend
  url: 'http://jsonplaceholder.typicode.com/posts'
  model: MyApp.Models.Post
