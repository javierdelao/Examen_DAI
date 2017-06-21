<?php

    include '../librerias.php';
    //levante datos session
    session_start();
    
    session_unset();
    
    header('Location: '.URL);
    exit;

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

