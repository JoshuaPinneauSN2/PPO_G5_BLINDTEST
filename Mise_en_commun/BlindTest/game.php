<!DOCTYPE html>
<html lang="en">
<?php
        session_start();
        include "connexion.php";

        $question = array();
		$cptquestion = $_GET['cptquestion'];
		$cptquestion++;
		
		$score=$_GET['score'];
		
		$theme=$_GET['idtheme'];
		$musique_joue = $connexion->query("SELECT musique.nom mnom, artiste.nom anom, musique.files fichier FROM musique JOIN artiste ON musique.artiste_id = artiste.id WHERE theme_idtheme = '$theme' ORDER BY RAND() LIMIT 1");
		$musique_joue->setFetchMode(PDO::FETCH_OBJ);
		
        while ($tableau = $musique_joue->fetch()) {
			$nom_musique = $tableau->mnom;
            $nom_artiste = $tableau->anom;
			$file = $tableau->fichier;
            $reponse_vrai[] = array('nom_musique' => $nom_musique, 'nom_artiste' => $nom_artiste, 'fichier' => $file);
			
        }
		
		$musique_nonjoue = $connexion->query("SELECT musique_nonjoue.nom mnom, artiste.nom anom FROM musique_nonjoue JOIN artiste ON musique_nonjoue.artiste_id = artiste.id WHERE theme_idtheme = '$theme' ORDER BY RAND() LIMIT 3");
		$musique_nonjoue->setFetchMode(PDO::FETCH_OBJ);
	
		while ($tableau = $musique_nonjoue->fetch()) {
			$nom_musique = $tableau->mnom;
            $nom_artiste = $tableau->anom;
			$file = " ";
            $reponse_fausse[] = array('nom_musique' => $nom_musique, 'nom_artiste' => $nom_artiste, 'fichier' => $file);
        }
		
		$reponse = array($reponse_vrai[0], $reponse_fausse[0], $reponse_fausse[1], $reponse_fausse[2]);
		shuffle($reponse);
		
		
		$norep = 'A';
        ?>
  <head>
    <meta charset="UTF-8" />
    <!--<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />-->
    <title>Quick Quiz - Play</title>
    <link rel="stylesheet" href="app.css" />
    <link rel="stylesheet" href="game.css" />
  </head>
  <body>
    <div id="container">
      <!--<div id="loader"></div>
      <div id="game" class="justify-center flex-column hidden">
        <div id="hud">
          <div id="hud-item">
            <p id="progressText" class="hud-prefix"> Question </p>
            <div id="progressBar">
              <div id="progressBarFull"></div>
            </div>-->
          
          <div id="hud-item">
            <p class="hud-prefix">
              Score
            </p>
            <h1 class="hud-main-text" id="score">
              <?php echo $score;?>
            </h1>
          </div>
		
		<audio class="choice-container" controls="controls">
		<source src="Musique/<?php echo $reponse_vrai[0]['fichier']?>" type="audio/mp3" />
		Votre navigateur n'est pas compatible
		</audio>
		
        <h2 id="question"></h2>
				<?php
				foreach($reponse as $rep){
					if($cptquestion != 4){
						if($rep['fichier']==$reponse_vrai[0]['fichier']){
							?>
							<a class="choice-container" href="game.php?idtheme=<?php echo $theme;?>&cptquestion=<?php echo $cptquestion;?>&score=<?php echo $score+20;?>">
							<p class="choice-prefix"><?php echo $norep; ?></p>
							<p class="choice-text"><?php echo $rep['nom_musique']." de ".$rep['nom_artiste']; ?></p>
							</a>
							<?php
						}else{
							?>
							<a class="choice-container" href="game.php?idtheme=<?php echo $theme;?>&cptquestion=<?php echo $cptquestion;?>&score=<?php echo $score;?>">
							<p class="choice-prefix"><?php echo $norep; ?></p>
							<p class="choice-text"><?php echo $rep['nom_musique']." de ".$rep['nom_artiste']; ?></p>
							</a>
						<?php
						}
					}else{
						if($rep['fichier']==$reponse_vrai[0]['fichier']){
							?>
							<a class="choice-container" href="login.php?score=<?php echo $score+20;?>">
							<p class="choice-prefix"><?php echo $norep; ?></p>
							<p class="choice-text"><?php echo $rep['nom_musique']." de ".$rep['nom_artiste']; ?></p>
							<?php
						}else{
							?>
							<a class="choice-container" href="login.php?score=<?php echo $score;?>">
							<p class="choice-prefix"><?php echo $norep; ?></p>
							<p class="choice-text"><?php echo $rep['nom_musique']." de ".$rep['nom_artiste']; ?></p>
							</a>
						<?php
						}
					}
					$norep++;
				}
                ?>
      </div>
  </body>
</html>
