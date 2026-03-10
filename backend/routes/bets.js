
const router=require('express').Router()
const Bet=require('../models/Bet')

router.post('/place',async(req,res)=>{

 const {userId,eventId,team,stake,odds}=req.body
 const potentialWin=stake*odds

 const bet=new Bet({userId,eventId,team,stake,odds,potentialWin})
 await bet.save()

 res.json(bet)
})

router.get('/user/:id',async(req,res)=>{

 const bets=await Bet.find({userId:req.params.id})
 res.json(bets)

})

module.exports=router
