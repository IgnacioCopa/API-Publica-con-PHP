<?php

     include ('cors.php');

        //header('Content-Type: application/json; charset=utf-8');
    
        $db_host ="localhost:3310";
        $db_nombre ="divisas";
        $db_usuario = "root";
        $db_contraseña="";

        //tabla
        $db_table="trade";

        $connection= mysqli_connect($db_host,$db_usuario,$db_contraseña,$db_nombre);
        mysqli_set_charset($connection,'utf8');
        
        
        if(mysqli_connect_errno()){

            echo "Fallo en la conexión";
        }
        else{

            $query = "SELECT * FROM $db_table";

            $results = mysqli_query($connection,$query);
    
            $fila = mysqli_fetch_row($results);

           /* foreach($results as $dato){

                foreach($dato as $da){
                    
                    echo $da ."<br>";
                    
                }
                
            }*/

            //CONVERTIR A JSON
            $json=array();

            foreach($results as $write){

                $json[] = array(
                    "id" => $write["id"],
                    "divisa" => $write["divisa"],
                    "compra" => $write["compra"],
                    "venta" => $write["venta"],
                );              
            }
    
            $json_package = json_encode($json, JSON_UNESCAPED_UNICODE);
            echo $json_package;
            
            
           /* print_r ($fila);
            
            echo "<br><br>";
            foreach ($fila as $key => $value) {
                
                echo $value. "<br>"; 
            }
            */

        }

        //cerrar conexion
        mysqli_close($connection);

    

  
