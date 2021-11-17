<?php
    header('Access-Control-Allow-Origin: *');

    //Récupération des recettes à gérer

    try {
	    $bdd = new PDO('mysql:host=localhost;dbname=cma;charset=utf8', 'root', '');
    }
    catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }

    if (isset($_POST['dateD']) AND isset($_POST['dateF']) AND $_POST['caissier'] AND isset($_GET['moment'])) {

        if ($_GET['moment'] == "nuit") {

            $debut = $_POST['dateD'] . ' 12:00:00';
            $fin = $_POST['dateF'] . ' 15:00:00';
            
            $req = $bdd->prepare('SELECT id_prod, designation, SUM(prix_total) AS prix, SUM(quantite) AS qte FROM historique WHERE
                        nom_vendeur = :nom_vendeur AND (date_vente BETWEEN :precedent AND :actuel) GROUP BY id_prod') or die(print_r($bdd->errorInfo()));
            $req->execute(
                array(
                    'nom_vendeur' => $_POST['caissier'],
                    'precedent' => $debut,
                    'actuel' => $fin,
                )
            );

        } else if ($_GET['moment'] == "jour") {

            $debut = $_POST['dateD'] . ' 06:00:00';
            $fin = $_POST['dateF'] . ' 20:00:00';

            $req = $bdd->prepare('SELECT id_prod, designation, SUM(prix_total) AS prix, SUM(quantite) AS qte FROM historique
            WHERE nom_vendeur = :nom_vendeur AND (date_vente BETWEEN :actuel AND :suivant) GROUP BY id_prod') or die(print_r($bdd->errorInfo()));
            $req->execute(
                array(
                    'nom_vendeur' => $_POST['caissier'],
                    'actuel' => $debut,
                    'suivant' => $fin,
                )
            );
        }

        $data = $req->fetchAll();
        echo json_encode($data);
    }
?>