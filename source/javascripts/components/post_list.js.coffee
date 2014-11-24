{div, h1, a, p}  = React.DOM

PostList = React.createClass
  mixins: [Backbone.React.Component.mixin]

  render: ->
    div className: 'post-list',
      @getCollection().map (model)->
        div className: 'well',
          h1 {}, model.get('title')
          p {}, model.get('body')



MyApp.Views.PostList = React.createFactory(PostList)