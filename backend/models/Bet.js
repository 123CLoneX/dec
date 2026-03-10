
const mongoose=require('mongoose')

const BetSchema=new mongoose.Schema({
 userId:String,
 eventId:String,
 team:String,
 stake:Number,
 odds:Number,
 potentialWin:Number
})

module.exports=mongoose.model('Bet',BetSchema)
