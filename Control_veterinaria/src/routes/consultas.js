const express=require('express');
const conn =require('../database'); //archivo de coneccion a la bd

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
/*conn.query("insert into tratamiento_mascota (tratamientos,id_mascota) values('vacuna antirrabica','4004ab')",(err,res,campos)=>{
    console.log(res);
})*/
/*conn.query("insert into enfermedad_mascota (enfermedades,id_mascota) values('hepatitis caninca','4004ab')",(err,res,campos)=>{
    console.log(res);
})*/
/*conn.query("delete from tratamiento_mascota where id_mascota='4004ab' and tratamientos='vacuna antirrabica' ",(err,res,campos)=>{
    console.log(res);
})*/
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