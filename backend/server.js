
require('dotenv').config()
const express = require('express')
const cors = require('cors')
const mongoose = require('mongoose')

const authRoutes = require('./routes/auth')
const eventRoutes = require('./routes/events')
const betRoutes = require('./routes/bets')

const app = express()
app.use(cors())
app.use(express.json())

mongoose.connect(process.env.MONGO_URI)
.then(()=>console.log("MongoDB Connected"))

app.use('/api/auth',authRoutes)
app.use('/api/events',eventRoutes)
app.use('/api/bets',betRoutes)

app.listen(process.env.PORT || 5000,()=>{
 console.log("Server running")
})
