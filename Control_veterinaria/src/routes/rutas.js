const express = require('express');
const conn = require('../database'); //archivo de coneccion a la bd
const router = express.Router();


router.get('/',(req,res) => {
    res.render('index',{title: 'First Website'});
});
router.get('/servicios',(req,res)=>{
    res.render('servicios');
});
router.get ('/registroMascota',(req,res)=>{
    res.render('registroMascota');
});
router.get ('/mascota',(req,res)=>{
    conn.query('select * from mascota',(err, respuesta)=>{
    if(!err){
        res.render('mascota',{mascotas: respuesta});
    }
    else{
        console.log(err);
    }
});
    
});

router.post('/add',(req,res)=>{
    const {rut,pnombre,papellido,email,clave}  = req.body;
    console.log(req.body);
    conn.query('insert into cliente set ?',{
       rut: rut,
        primernombre: pnombre,
        primerapellido: papellido,
        correo: email,
        clave: clave
    },(err,result)=>{
        if(!err){
            res.redirect('registroMascota');
        }
        else{
            console.log(err);
        }
    });
});
router.get('/mascotas',(req,res)=>{
    const {rut} = req.params;
    conn.query('select * from mascota where rut_cliente = ?',{id},(err,result)=>{

        if(!err){
            res.render('registroMascota',{mascotas: result});
        }
        else{
            console.log(err);
        }
    });
});

router.post('/add/mascota',(req,res)=>{
    const {nombre_mascota,especie,raza,rut_cliente,edad,peso}  = req.body;
    //console.log(req.body);
    conn.query('insert into mascota set ?',{
        nombre_mascota: nombre_mascota,
        especie: especie,
        raza: raza,
        rut_cliente: rut_cliente,
        edad: edad,
        peso: peso
    },(err,result)=>{
        if(!err){
            res.render('registroMascota',{respuesta: result});
        }
        else{
            //res.redirect('/',{respuesta: result});
            console.log(err);
        }
    });

});

//Consultas pendiente de implementación

/*conn.query("select nombre_mascota from mascota ",(err,res,campos)=>{
    console.log(res);
})*/
/*conn.query("insert into mascota (id_mascota,nombre_mascota,especie,raza,rut_cliente,edad,peso) values('4010ab','carlos','perro','san bernardo','17800300','3','30'); ",(err,res,campos)=>{
    console.log(res);
})*/

/*conn.query("select id_mascota, nombre_mascota, primernombre, primerapellido, rut, correo, clave from mascota join cliente on rut=rut_cliente where rut_cliente= 17800300",(err,res,campos)=>{
    console.log(res);
})*/

/*conn.query("select * from mascota inner join cliente on rut=rut_cliente where especie='perro'",(err,res,campos)=>{
    console.log(res);
})*/
//conn.query("insert into tratamiento_mascota (tratamientos,id_mascota) values('vacuna antirrabica','4005ab')",(err,res,campos)=>{
  //  console.log(res);
//})
/*conn.query("insert into enfermedad_mascota (enfermedades,id_mascota) values('hepatitis caninca','4004ab')",(err,res,campos)=>{
    console.log(res);
})*/
//conn.query("delete from tratamiento_mascota where id_mascota='4005ab' and tratamientos='vacuna antirrabica' ",(err,res,campos)=>{
  //  console.log(res);
//})
/*conn.query("select id_mascota, ficha_consulta.id_historial, observaciones, id_consulta from ficha_consulta join historial_medico on historial_medico.id_historial=ficha_consulta.id_historial where id_mascota='4000ab'",(err,res,campos)=>{
    console.log(res);
})*/
/*conn.query("insert into historial_medico (id_historial,observaciones) values ('5010gg',NULL)",(err,res,campos)=>{
    console.log(res);
})*/

/*conn.query("delete from historial_medico where id_historial='5010gg'",(err,res,campos)=>{
    console.log(res);
})*/
/*conn.query("update mascota set edad='5' where nombre_mascota='firulais'",(err,res,campos)=>{
    console.log(res);
})*/
/*conn.query("update ficha_consulta set diagnostico='otitis', veterinario='L.Riquelme' where id_mascota='4002ab' and id_consulta='0011kl'",(err,res,campos)=>{
    console.log(res);
})*/
/*conn.query("alter table cliente add telefono VARCHAR(15) NULL",(err,res,campos)=>{
    console.log(res);
})*/
/*conn.query("alter table cliente drop column telefono",(err,res,campos)=>{
    console.log(res);
})*/
/*conn.query("drop table tratamiento_mascota",(err,res,campos)=>{
    console.log(res);
})*/

//Agrupar y mostrar la cantidad de clientes por especie

/*conn.query("select count(rut) as clientes, especie from mascota join cliente on rut_cliente = rut group by especie;",(err,res,campos)=>{
    console.log(res);
    })

//mostrar la cantidad de historiales que existen por edad de animales y agruparlos por especie.  
conn.query("select count(id_historial) as historial, edad,especie from mascota join historial_medico on mascota.id_mascota = historial_medico.id_mascota group by edad;",(err,res,campos)=>{
        console.log(res);
    
    })

//contar y mostrar la cantidad de observaciones agrupar por nombre de vterinario

conn.query("select count(observaciones) as cantidad_observaciones,veterinario from ficha_consulta join historial_medico on ficha_consulta.id_historial = historial_medico.id_historial group by veterinario;",(err,res,campos)=>{
        console.log(res);})

//contar la cantidad de razas de animales que hay por cliente

conn.query("select count(rut) as cantidad_clientes, raza from mascota join cliente on  rut_cliente = rut group by raza;",(err,res,campos)=>{
        console.log(res);
    
    })

//mostrar la cantidad de mascotas que tienen enfermedades agruparlos por enfermedad que padecen

conn.query("select count(id_historial) as cantidadmascota, enfermedad from enfermedad_mascota join historial_medico on enfermedad_mascota.id_enfermedad = historial_medico.id_enfermedad group by enfermedad",(err,res,campos)=>{
        console.log(res);
    
    })*/

//funciones 
/*

//mostrar el cliente con la mascota de mayor edad

conn.query("select MAX(edad) as Mascota_mayor_edad,primernombre as dueño,especie from cliente join mascota on rut = rut_cliente;",(err,res,campos)=>{console.log(res);})


//mostrar el cliente con la mascota de menor peso

conn.query("select MIN(peso) as mascota_menor_peso,primernombre as dueño,especie from cliente join mascota on rut = rut_cliente;",(err,res,campos)=>{console.log(res);})
    

//obtener promedio de peso por especie de mascotas


conn.query("select AVG(peso) as promedio,especie from mascota group by especie",(err,res,campos)=>{console.log(res);})
*/

//subconsultas

/*

//obtener el nombre del cliente con una mascota que supere el peso promedio de todas las mascotas

conn.query("select primernombre,primerapellido,peso as peso_mascota from cliente join mascota on rut = rut_cliente where peso > (select AVG(peso) as promedio from mascota)",(err,res,campos)=>{console.log(res);})

//obtener el nombre del cliente con una mascota que no supere el peso promedio de todas las mascotas
conn.query("select primernombre,primerapellido,peso as peso_mascota from cliente join mascota on rut = rut_cliente where peso < (select AVG(peso) as promedio from mascota)",(err,res,campos)=>{console.log(res);})

//obtener el nombre del cliente con una mascota que supera la edad promedio de todas las mascotas
conn.query("select primernombre,primerapellido,correo,rut,edad as edad_mascota from cliente join mascota on rut = rut_cliente where edad > (select AVG(edad) as edad from mascota)",(err,res,campos)=>{console.log(res);})
//obtener el nombre del cliente con una mascota que no supera la edad promedio de todas las mascotas
conn.query("select primernombre,primerapellido,edad,correo as edad_mascota from cliente join mascota on rut = rut_cliente where edad < (select AVG(edad) as edad from mascota)",(err,res,campos)=>{console.log(res);})
*/

//operdadores

/*
conn.query("select rut,correo from cliente join mascota on rut = rut_cliente where NOT peso >= 30 AND especie = 'perro' ",(err,res,campos)=>{console.log(res);})
conn.query("select correo from cliente join mascota on rut = rut_cliente where peso <= 5 AND especie = 'gato' ",(err,res,campos)=>{console.log(res);})

conn.query("select id_historial from ficha_consulta join historial_medico on ficha_consulta.id_historial = historial_medico.id_historial  where veterinario = 'A.Barria' or veterinario = 'M.Cubillos'",(err,res,campos)=>{console.log(res);})


conn.query("select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'cliente'",(err,res,campos)=>{console.log(res);})
conn.query("select TABLE_CATALOG from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'mascota'",(err,res,campos)=>{console.log(res);})
conn.query("select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'historial_medico'",(err,res,campos)=>{console.log(res);})
*/
module.exports= router;