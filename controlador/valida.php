<?php

    session_start();
    
    include '../libreerias.php';
    
    $oUsuario=new Usuario($_REQUEST["nomusu"],$_REQUEST["claveusu"]);
    
    if($oUSuario->VerificacionAcceso()){
        
    echo "Todo bien";
    
    }else{
        echo "Todo mal";
        
        
    }

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

