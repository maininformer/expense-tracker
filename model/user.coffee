mongoose = require 'mongoose'

User = new mongoose.Schema(
	userName: {type: String, required: true}
	password: {type: String, required: true}
	isAdmin: {type: Boolean, default: false}
)

mongoose.model "User",User