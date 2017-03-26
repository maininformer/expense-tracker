app = require('express')()
app.set "port", 4000

app.get '/',(req, res) ->
	res.send "Hello"

app.listen app.get('port'), ->
	console.log "Listening on port #{app.get('port')}"

