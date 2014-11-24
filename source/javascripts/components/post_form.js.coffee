{div, h1, a, p, form, input, label}  = React.DOM

PostForm = React.createClass
  mixins: [Backbone.React.Component.mixin]

  submitForm: ->
    title = @refs.postTitle.getDOMNode().value
    body = @refs.postBody.getDOMNode().value

    if title.trim().length == 0 or body.trim().length == 0
      alert('Title and body cannot be blank.')
    else
      @getCollection().create new MyApp.Models.Post(title: title, body: body),
        wait: true
        at: 0
        success: (model, response)->
          console.log 'Success'

        error: (model, response)->
          console.log 'Error'

      @refs.postTitle.getDOMNode().value = ''
      @refs.postBody.getDOMNode().value = ''

  render: ->
    div className: 'panel panel-default',
      div className: 'panel-heading', 'Create post'
      div className: 'panel-body',
        form className: 'post-form',
          div className: 'form-group',
            label {}, 'Title'
            input ref: 'postTitle', className: 'form-control', type: 'text', placeholder: 'Enter title...'

          div className: 'form-group',
            label {}, 'Body'
            input ref: 'postBody', className: 'form-control', type: 'text', placeholder: 'Enter body...'

          a className: 'btn btn-primary', onClick: @submitForm, 'Create post'


MyApp.Views.PostForm = React.createFactory(PostForm)