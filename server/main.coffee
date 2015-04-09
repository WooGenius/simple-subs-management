Meteor.publish("categories", ->
  self = this
  Meteor.defer(->
    self.added("categories", "id1", text: "Cat 1")
    self.added("categories", "id2", text: "Cat 2")
    Meteor._sleepForMs(1000)
    self.ready()
  )
)

Meteor.publish("comments", (from)->
  self = this
  Meteor.defer(->
    self.added("comments", "id1", {text: "Great!"})
    Meteor._sleepForMs(200)
    self.added("comments", "id2", {text: "Bull shit!"})
    Meteor._sleepForMs(200)
    self.added("comments", "id3", {text: "WTF!"})
    Meteor._sleepForMs(200)
    self.added("comments", "id4", {text: "Beautiful!"})
    Meteor._sleepForMs(200)
    self.added("comments", "id5", {text: "Hehe!"})
    Meteor._sleepForMs(200)
    self.ready()
  )
)

Meteor.publish("moreComments", (from)->
  self = this
  Meteor.defer(->
    self.added("comments", "id6", {text: "Great!"})
    Meteor._sleepForMs(200)
    self.added("comments", "id7", {text: "Bull shit!"})
    Meteor._sleepForMs(200)
    self.added("comments", "id8", {text: "WTF!"})
    Meteor._sleepForMs(200)
    self.added("comments", "id9", {text: "Beautiful!"})
    Meteor._sleepForMs(200)
    self.added("comments", "id10", {text: "Hehe!"})
    Meteor._sleepForMs(200)
    self.ready()
  )
)

Meteor.publish("currentPost", ->
  self = this
  Meteor.defer(->
    Meteor._sleepForMs(200)
    self.ready()
  )
)
