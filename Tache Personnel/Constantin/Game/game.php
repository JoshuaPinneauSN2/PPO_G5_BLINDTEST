

<!DOCTYPE html>
<html lang="en">
  <head>
  <?php
        session_start();
        include "connexion.php";

        $question = array();
		
		$theme=$_GET['idtheme'];
		$musique = $connexion->query("SELECT * FROM musique WHERE theme_idtheme = '$theme'");
		
		$artiste = $connexion->query("SELECT * FROM artiste WHERE id='$artiste' ");
		
        $musique->setFetchMode(PDO::FETCH_OBJ);

        while ($tableau = $musique->fetch()) {
			$nom_musique = $tableau->nom;
            $idartiste = $tableau->artiste_id;

            $question[] = array('nom_musique' => $nom_musique, 'artiste' => $idartiste);
        }
		
		
		
        ?>
    <meta charset="UTF-8" />
    <!--<meta name="viewport" content="width=device-width, initial-sca+le=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />-->
    <title>Quick Quiz - Play</title>
    <link rel="stylesheet" href="app.css" />
    <link rel="stylesheet" href="game.css" />
  </head>
  <body>
	<h2>Liste des elements questions</h2>
        <div class="row">
            <table>
                <?php
                foreach ($question as $quest) {
                    ?>
                    <tr>
                        <td><?php echo $quest['nom_musique']; ?></td>
                        <td><?php echo $quest['artiste']; ?></td>
                    </tr>
                    <?php
                }
                ?>
            </table>
    <!--<div id="container">
      <div id="loader"></div>
      <div id="game" class="justify-center flex-column hidden">
        <div id="hud">
          <div id="hud-item">
            <p id="progressText" class="hud-prefix"> Question </p>
            <div id="progressBar">
              <div id="progressBarFull"></div>
            </div>-->
          
          <!--<div id="hud-item">
            <p class="hud-prefix">
              Score
            </p>
            <h1 class="hud-main-text" id="score">
              0
            </h1>
          </div>
		
		<audio class="choice-container" controls="controls">
		<source src="music.mp3" type="audio/mp3" />
		Votre navigateur n'est pas compatible
		</audio>
		
        <h2 id="question"></h2>
        <div class="choice-container">
          <p class="choice-prefix">A</p>
          <p class="choice-text" data-number="1"></p>
        </div>
        <div class="choice-container">
          <p class="choice-prefix">B</p>
          <p class="choice-text" data-number="2"></p>
        </div>
        <div class="choice-container">
          <p class="choice-prefix">C</p>
          <p class="choice-text" data-number="3"></p>
        </div>
        <div class="choice-container">
          <p class="choice-prefix">D</p>
          <p class="choice-text" data-number="4"></p>
        </div>
      </div>-->
  </body>
</html>
