app = require('express')()
mongoose = require 'mongoose'

app.set "port", 4000
app.set "uri", "mongodb://user:password@mongo:27017/expense-tracker"

mongoose.connect app.get("uri"), {db: {safe: true}}, (err) ->
	console.log "Mongoose - connection error: " + err if err?
  	console.log "Mongoose - connection OK"

require './models/user'
require './models/expense'
# app.get '/',(req, res) ->
# 	res.send "Hello, How are you?"

# app.listen app.get('port'), ->
# 	console.log "Listening on port #{app.get('port')}"

