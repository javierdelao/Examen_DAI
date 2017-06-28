<?php

    session_start();
    
    include '../librerias.php';
   print_r("expression");
         $oConn=new Conexion();
         
         if ($oConn->Conectar()){
         	echo " conecta";
             $db=$oConn->objconn;
         }else{
         	echo "no conecta";
             return false;
         }

 	$sql="SELECT * FROM cliente WHERE rut='".$_REQUEST["usuario"]."' and password='".md5($_REQUEST["clave"])."'";
          
    $resultado=$db->query($sql);

  	print_r($resultado->num_rows);
  	if($resultado->num_rows===1){
   header('Location: ../clientes.php');
  	}else{
  	$data['error'] = 'clave incorrecta';   
    header('Location: ../');
    return $data;
  	}
  




/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

