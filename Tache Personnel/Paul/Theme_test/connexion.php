<?php

$PARAM_hote = 'localhost';
$PARAM_port = '3306';
$PARAM_nom_bd = 'bbd_blindtest';
$PARAM_utilisateur = 'Blindtest';
$PARAM_mot_passe = 'Nantes44';

$connexion = new PDO('mysql:host='.$PARAM_hote.'; port='.$PARAM_port.'; dbname='.$PARAM_nom_bd, $PARAM_utilisateur, $PARAM_mot_passe);
?>