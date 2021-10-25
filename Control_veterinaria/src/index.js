const bodyParser=require ('body-parser');
const express = require ('express');
const app = express();
const path = require('path');

//configuracion
app.set('port',process.env.PORT || 3000);
app.set('views',path.join(__dirname,'views'));
//app.engine('html',require('ejs').renderFile);
app.set('view engine','ejs');
//middleware
app.use(express.json());
app.use(bodyParser.urlencoded({extended: true})); // analiza el texto como datos codificados de URL y expone el objeto resultante (FORMULARIOS)

//rutas
app.use(require('./routes/rutas.js'));

//servidor
app.listen(app.get('port'), (error)=> {
    if(error){
        console.log("error al iniciar");
    }else{
        console.log('servidor en Puerto',app.get('port'))
    }
   
});