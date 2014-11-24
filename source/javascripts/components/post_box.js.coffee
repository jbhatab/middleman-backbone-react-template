{div, p, h1} = React.DOM

PostBox = React.createClass
  mixins: [Backbone.React.Component.mixin]

  render: ->
    div {},
      MyApp.Views.PostForm()
      MyApp.Views.PostList()

PostBox = React.createFactory(PostBox)

posts = new MyApp.Collections.Posts

posts.fetch().done ->

  React.render PostBox(collection: posts), document.getElementById('home-page-wrapper')


