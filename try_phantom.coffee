page = require('webpage').create()
page.open 'http://localhost:3000', (status) ->
  console.log "#{status}"
  title = page.evaluate -> document.title
  console.log "title: #{title}"
  phantom.exit()
