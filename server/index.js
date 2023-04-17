//IMPORTS FROM PACKAGES
const express = require("express");
const mongoose = require('mongoose');
//IMPORTS FROM OTHER FILES  
const authRouter = require("./routes/auth");
//import './features/auth/screens/auth_screens.dart

const PORT = process.env.PORT || 3000;
const app = express();
const DB = "mongodb+srv://raj16052:raj16052@cluster0.67ptzod.mongodb.net/?retryWrites=true&w=majority";

// middleware
app.use(express.json());
app.use(authRouter);

//CONNECTIONS
mongoose.connect(DB).then(() => {
    console.log("Connection successfully...")
}).catch((e) => {
    console.log(e);
})







app.listen(PORT, "0.0.0.0", () => {
    console.log(`connected to port ${PORT}`);
})