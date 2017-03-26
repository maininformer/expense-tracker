mongoose = require 'mongoose'

Expense = new mongoose.Schema(
	created: {type: Date, default: Date.now}
	userId: {type: Schema.Types.ObjectId, ref: 'User'}
	amount: {type: Number, required: true}

)

mongoose.model "Expense", Expense