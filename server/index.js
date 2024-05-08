const express = require("express");
const mongoose = require("mongoose");

const authRouter = require("./routes/auth");

const DB = "mongodb+srv://arbinstha71:A@bro098@cluster0.wh5tylr.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0"

app.use(authRouter);

monggose
.connect(DB).then(()=>{
    console.log("Connection Succcessful !")
}).catch((e)=>{
    console.log(e);
});

const PORT = 3000;
const app = express();

app.listen(PORT , ()=>{
    console.log(`Connected to port ${PORT}`);
})
