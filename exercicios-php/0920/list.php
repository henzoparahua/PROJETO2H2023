<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista</title>
</head>
<body>

<form action="v1/Api.php?apicall=updatehero" method="post" >

    <div class="piramide-rinode">

    <input type="text" name="id" placeholder="id" required>
    <br> 

    <input type="text" name="name" placeholder="name" required>
    <br>    
    <input type="text" name="realname" placeholder="realname" required>
    <br> 
    <!-- <label for="rating">rating</label>
    <input type="text" name="rating" placeholder="rating" required>
    <br>  -->

    <br><label for="radio">Rating:</label><br>
    <input type="radio" name="rating" placeholder="radio" id="rating" value="1" required>
    <img src="estrela.png" alt="estrela" for="1"><br>
    <input type="radio" name="rating" placeholder="radio" id="rating" value="2" required>
    <img src="estrela.png" alt="estrela" for="2">
    <img src="estrela.png" alt="estrela" for="2"><br>
    <input type="radio" name="rating" placeholder="radio" id="rating" value="3" required>
    <img src="estrela.png" alt="estrela" for="3">
    <img src="estrela.png" alt="estrela" for="3">
    <img src="estrela.png" alt="estrela" for="3"><br>
    <input type="radio" name="rating" placeholder="radio" id="rating" value="4" required>
    <img src="estrela.png" alt="estrela" for="4">
    <img src="estrela.png" alt="estrela" for="4">
    <img src="estrela.png" alt="estrela" for="4">
    <img src="estrela.png" alt="estrela" for="4"><br>
    <input type="radio" name="rating" placeholder="radio" id="rating" value="5" required>
    <img src="estrela.png" alt="estrela" for="5">
    <img src="estrela.png" alt="estrela" for="5">
    <img src="estrela.png" alt="estrela" for="5">
    <img src="estrela.png" alt="estrela" for="5">
    <img src="estrela.png" alt="estrela" for="5"><br>
    <input type="text" name="teamaffiliation" placeholder="teamaffiliation" required>

  
    </div>
    <br><input type="submit" value="submit">
    </form>

</div>
    
</body>
</html>