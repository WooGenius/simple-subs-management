Template.page.helpers(
  comments: -> Comments.find()
  categories: ->
    categories = Categories.find().fetch()
    _.pluck(categories, "text").join(", ")
)
