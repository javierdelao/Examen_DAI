<?php
 include'librerias.php';
 session_start();
 if(!isset($_SESSION["USER"])){
     header('Location: '.URL);
     exit;
 }
?>


<html>
    <head>
        <title></title>
    </head>
    <body>
        <?php
            if(!isset($_SESSION["USER"])){
                ?>
        <div> 
            <?php
            $oUsu=$SESSION["USER"];
            echo $oUsu->nombre;
                ?>
            <a href="<?=URL?>controlador/cierrasesion.php">Cerrar sesion</a> 
            <?php}?>
            <div id="header"></div>
            <div id="menulateral"></div>
            <div id="contenido"></div>
            
        </div>
    </body>    
</html>
