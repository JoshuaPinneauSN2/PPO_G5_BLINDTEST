<!DOCTYPE html>
<?php 
#include <sys/types.h>
#include <sys/socket.h>
 
#include <stdio.h>

$address = '10.16.3.214';
$port = 53000;
$msg = "GAGNE:5";
?>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Login</title>
    <link rel="stylesheet" href="app.css" />
  </head>
  <body>
    <div class="container">
      <div id="end" class="flex-center flex-column">
        <h1 id="finalScore"></h1>
		<form>
          <input
            type="text"
            name="username"
            id="username"
            placeholder="username"
          />
		<?php
		if(isset($_GET['score']))
		{
			$score = $_GET['score'];
		}
		
		 
		if($score>=50)
		{
				$socket = socket_create(AF_INET, SOCK_STREAM, SOL_TCP);
			if (!socket_connect($socket, $address, $port)) 
			{
				$errorcode = socket_last_error();
				$errormsg = socket_strerror($errorcode);
				die("Could not connect: [{$errorcode}] {$errormsg} \n");
			}
			echo "Connection established \n";
		
			if(socket_send($socket, $msg, strlen($msg), 0) !== FALSE)
			{
				echo $msg;
				socket_close($socket);
			}	
		}
		
		?>
        
        <a class="btn" href="end.php?score=<?php echo $score?>&username=<?php //echo $user;?>">
			Save
		 </a>
        </form>
      </div>
    </div>
  </body>
</html>
