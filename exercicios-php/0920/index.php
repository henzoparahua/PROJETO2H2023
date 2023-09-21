<!DOCTYPE html>
<html lang="en">
<head>
    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="stylesheet.css">
    <title>Document</title>
</head>
<body>
    <div class="forms-bg">

    <form action="v1/Api.php?apicall=createhero" method="post" >
    <label for="name">name</label>
    <input type="text" name="name" placeholder="name" required>
    <br>    
    <label for="realname">realname</label>
    <input type="text" name="realname" placeholder="realname" required>
    <br> 
    <label for="rating">rating</label>
    <input type="text" name="rating" placeholder="rating" required>
    <br> 

    <!-- <br><label for="radio">Last name:</label><br>
    <input type="radio" name="rating" placeholder="radio" id="rating" value="1" required>
    <label for="1">1-estrela</label><br>
    <input type="radio" name="rating" placeholder="radio" id="rating" value="2" required>
    <label for="2">2-estrelas</label><br>
    <input type="radio" name="rating" placeholder="radio" id="rating" value="3" required>
    <label for="3">3-estrelas</label><br>
    <input type="radio" name="rating" placeholder="radio" id="rating" value="4" required>
    <label for="4">4-estrelas</label><br>
    <input type="radio" name="rating" placeholder="radio" id="rating" value="5" required>
    <label for="5">5-estrelas</label><br> -->
    <label for="teamaffiliation">teamaffiliation</label>
    <input type="text" name="teamaffiliation" placeholder="teamaffiliation" required>

   
    
    <br><input type="submit" value="submit">
    </form>
  

</div>


</body>
</html>