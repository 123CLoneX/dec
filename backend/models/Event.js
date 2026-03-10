
const mongoose=require('mongoose')

const EventSchema=new mongoose.Schema({
 team1:String,
 team2:String,
 odds1:Number,
 odds2:Number,
 startTime:Date
})

module.exports=mongoose.model('Event',EventSchema)
