const bodyParser=require ('body-parser');
const express = require ('express');
const app = express();
const path = require('path');

//configuracion
app.set('port',process.env.PORT || 3000);

//middleware
app.use(express.json());

//rutas
app.use(require('./routes/consultas'));

//servidor
app.listen(app.get('port'), ()=> {
    console.log('servidor en Puerto',app.get('port'))
});