<?php
    header('Access-Control-Allow-Origin: *');

    //Récupération des recettes à gérer

    try {
	    $bdd = new PDO('mysql:host=localhost;dbname=cma;charset=utf8', 'root', '');
    }
    catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }

    if (isset($_POST['dateD']) AND isset($_POST['dateF'])) {

        $debut = $_POST['dateD'];
        $fin = $_POST['dateF'];
        
        $req = $bdd->prepare("SELECT *, DATE_FORMAT(date_vente, '%d/%m/%Y %Hh%imin%ss') as date_heure FROM historique WHERE date_vente BETWEEN :precedent AND :actuel") or die(print_r($bdd->errorInfo()));
        $req->execute(
            array(
                'precedent' => $debut,
                'actuel' => $fin,
            )
        );

        $data = $req->fetchAll();
        echo json_encode($data);
    }
?>