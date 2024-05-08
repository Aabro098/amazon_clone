const express = require("express");
const mongoose = require("mongoose");

const app =express();

const authRouter = require("./routes/auth");

const DB = "mongodb+srv://arbinstha71:A@bro098@cluster0.bevr1w2.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

app.use(authRouter);

mongoose
    .connect(DB)
    .then(()=>{
    console.log("Connection Succcessful !")
    }).catch((e)=>{
        console.log('Cannot Connect' , e);
    });

const PORT = 3000;

app.listen(PORT , ()=>{
    console.log(`Connected to port ${PORT}`);
})
