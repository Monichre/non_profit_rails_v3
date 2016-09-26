page = require('webpage').create()
page.open 'http://localhost:3000/users/1', (status) ->
  console.log "#{status}"
  main = page.evaluate -> document.body.main
  console.log "main: #{main}"
  phantom.exit()
