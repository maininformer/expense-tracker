app = require('express')()
mongoose = require 'mongoose'

app.set "port", 4000
app.set "uri", "mongodb://user:password@mongo:27017/expense-tracker"

mongoose.connect app.get("uri"), {db: {safe: true}}, (err) ->
	console.log "Mongoose - connection error: " + err if err?
  	console.log "Mongoose - connection OK"

require './model/user'
require './model/expense'

app.use express.bodyParser()

# RESTful users
app.post   '/users',    users.create
app.get    '/users',    users.read
app.get    '/users:id', users.read
app.put    '/users:id', users.update
app.delete '/users:id', users.delete

# RESTful expenses
app.post   '/expenses',    expenses.create
app.get    '/expenses',    expenses.read
app.get    '/expenses:id', expenses.read
app.put    '/expenses:id', expenses.update
app.delete '/expenses:id', expenses.delete
