<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

<script>

    let url="http://localhost/practicas%20PHP/mysqli/mysqli.php";

    fetch(url)
    .then(response => response.json())
    .then(data => {

        console.log(data);

        data.forEach(element => {
            document.write(`<p>${element.divisa}: <br>COMPRA: ${element.compra} <br>VENTA: ${element.venta}</p><br>`);
        });

        
    })




</script>
    
</body>
</html>