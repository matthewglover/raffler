class Raffler.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

  events:
    'submit #new_entry' : 'createEntry'
    'click #draw': 'drawWinner'

  initialize: ->
    @listenTo(@collection, 'reset', @render)
    @listenTo(@collection, 'add', @appendEntry)

  render: ->
    @$el.html(@template())
    @collection.each(@appendEntry)
    @

  appendEntry: (entry) =>
    view = new Raffler.Views.Entry(model: entry)
    @$('#entries').append(view.render().el)

  createEntry: (event) ->
    event.preventDefault()
    attributes = name: $('#new_entry_name').val()
    @collection.create attributes,
      wait: true
      success: -> $('#new_entry')[0].reset()
      error: @handleError

  drawWinner: (event) ->
    event.preventDefault()
    @collection.drawWinner()

  handleError: (entry, response) ->
    if response.status == 422
      errors = $.parseJSON(response.responseText).errors
      for attribute, messages of errors
        alert "#{attribute} #{message}" for message in messages
