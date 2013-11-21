class Raffler.Models.Entry extends Backbone.Model

  win: ->
    @set(winner: true)
    @save(wait:true)
    @trigger('highlight')