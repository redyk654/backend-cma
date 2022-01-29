<?php 
    header('Access-Control-Allow-Origin: *');

    //Récupération des recettes à gérer

    try {
	    $bdd = new PDO('mysql:host=localhost;dbname=cma;charset=utf8', 'root', '');
    }
    catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }

    $debut = '2022-01-17' . ' 08:00:00';
    $fin = '2022-01-17' . ' 14:00:00';

    $req = $bdd->prepare('SELECT frais, id_facture FROM historique_services WHERE (date_heure BETWEEN :precedent AND :actuel) GROUP BY id_facture') or die(print_r($bdd->errorInfo()));
    $req->execute(
        array(
            'precedent' => $debut,
            'actuel' => $fin,
        )
    );
    
    $data = $req->fetchAll();
    echo 1==1;
?>