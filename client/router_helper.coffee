@routerGo = (url) ->
  FlowRouter.go(url)

Template.routerGo.rendered = ->
  $a = @$("a")
  @href = @data.url
  $a.attr("href", @href)
  $a.addClass(@data.class) if @data.class

Template.routerGo.events(
  "click": (event, template) ->
    event.preventDefault()
    routerGo(template.href)
)

@subsReady = (sub) ->
  if sub
    FlowRouter.subsReady(sub)
  else
    FlowRouter.subsReady()

Template.registerHelper("subsReady", (arg) ->
  sub = arg and arg.hash.sub
  console.log sub
  console.log subsReady(sub)
  subsReady(sub)
)
