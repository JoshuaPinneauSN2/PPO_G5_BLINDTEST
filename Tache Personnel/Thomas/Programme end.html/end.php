
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Bravo !</title>
    <link rel="stylesheet" href="app.css" />
  </head>
  <body>
    
     <div class="container">
     <div id="end" class="flex-center flex-column">
     <?php
	 $score = $GET_['score'];
	 $user = $GET_['user'];
	
	 
	 if($score >= 50)
	      {?>
		    <h1 id="finalScore">Bravo vous avez Gagné <?php echo $user;?>.</h1>
			<h1 id="finalScore">Score : <?php echo $score;?></h1>
	     <?php }
	       else
		   { ?>
			    <h1 id="finalScore">Vous avez perdu, veuillez réessayer <?php echo $user;?>.</h1>
			    <h1 id="finalScore">Score : <?php echo $score;?></h1>
		   <?php 
		   } 
		   ?>
	
	<form>
		   <a class="btn" href="theme.php">Rejouez</a>
           <a class="btn" href="index.php">Deconnexion</a>
        </form>
        
      </div>
    </div>

  </body>
</html>