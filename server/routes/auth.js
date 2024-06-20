const express = require("express");
const bcryptjs = require("bcryptjs");

const User = require("../models/user");

const authRouter = express.Router();

authRouter.post("/api/signup" , async (req ,res)=>{
    const {name , email , password } = req.body;
    const existingUser = await User.findOne({email});
    try{
        if (existingUser){
            return res.status(400)
            .json({msg:"User with same email exists !"});
        }

        const hashedPassword = await bcryptjs.hash(password , 8);

        let user = new User({
            email,
            password : hashedPassword,
            name,
        })
        user = await user.save();
        res.json(user);
    } catch(e){
        return res.status(500)
        .json({error : e.message});
    }
});

authroute.post("/api/signin",async (req,res)=>{
    try{
        const {name,password} = req.body;
        const user  = await User.findOne({email});
        if (!user){
            return res.status(400)
            .json({msg:"User with this email doesn't exist"});
        }
        const isMatch = bcryptjs.compare(password , user.password);
        if (!isMatch){
            return res.status(400)
            .json({msg:"Invalid email or password"})
        }
    }catch(e){
        return res.status(500)
        .json({error : e.message});
    }
});

module.exports = authRouter

