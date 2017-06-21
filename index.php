
<?php 
    include 'librerias.php';
    session_start();
?>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.

-->
<html>
    <head>
       <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
         <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
          <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <h1>Hola Mundo</h1>
        
    </body>
    <script>
    $(document).ready(function(){
            $("#enviar").click(function(){
                /*$("form").hide();
                alert("Ocultaste el formulario ;-) "+ $("#nomusuario").val());*/
        
                if ($("#nomusu").val()!="" && $("#claveusu").val()!=""){
                    ///*$("#frmusuario").submit();
                    alert("Debe agregar un usuario y clave");
                }
                else{
                        $.ajax({url:"controlador/Valida.php"
                            ,type:'post'
                            ,data:{'nomusu':$("#nomusu").val(),
                                'clave':$("#clavusue").val()
                                }
                            ,success:function(resultado){
                                $("#mensaje").html(resultado);
                            }
                        
                        });
                    }//Cierre IF Valida blancos
                
                    alert("Debe Agregar el usuario y clave");
            });//Click Boton enviar
     });//Function Ready de la página
     </script>
</html>
