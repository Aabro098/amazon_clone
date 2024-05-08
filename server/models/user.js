const mongoose = require("mongoose");

const userSchema = mongoose.Schema({
    name : {
        type:String,
        required:true,
        trim:true
    },
    email :{
        type : required,
        required : true,
        trim: true,
        validate:{
            validator: (value)=>{
                const re = /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
                return value.match(re);
            },
            message: 'Enter a vallid Email',
        }
    },
    password:{
        required:true,
        type:String
    },
    address:{
        default:'',
        type:String
    },
    type:{
        type: String,
        default:'user'
    }
});

const User = mongoose.model("User", userSchema);
module.exports = User;