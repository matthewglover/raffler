class Raffler.Views.Entry extends Backbone.View
  template: JST['entries/entry']
  tagName: 'li'

  events:
    'click': 'showEntry'

  initialize: ->
    @listenTo(@model, 'change', @render)
    @listenTo(@model, 'highlight', @highlightWinner)

  showEntry: ->
    Backbone.history.navigate("entries/#{@model.get('id')}", true)

  highlightWinner: ->
    $('.winner').removeClass('highlight')
    @$('.winner').addClass('highlight')

  render: ->
    @$el.html(@template(entry: @model))
    @