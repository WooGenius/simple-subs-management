@Comments = new Mongo.Collection("comments")
@Categories = new Mongo.Collection("categories")

FlowRouter.route("/",
  action: ->
    FlowLayout.render("index")
)

FlowRouter.route("/blog/:pageId",
  #===============================================================
  # Route-level Subscriptions
  # * This Subscriptions should get data that is aligned with page
  # (e.g. Blog content, comment, ...)
  #================================================================
  subscriptions: (params) ->
    @subs =
      categories: Meteor.subscribe("categories")
      currentPost: Meteor.subscribe("currentPost", params.pageId)
      currentComments: Meteor.subscribe("comments", params.pageId)

    # Register on flow router
    self = this
    _.each(@subs, (val, key) ->
      self.register(key, val)
    )

  action: ->
    FlowLayout.render("page")
)
