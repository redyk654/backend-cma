<?php
    header('Access-Control-Allow-Origin: *');

    try {
	    $bdd = new PDO('mysql:host=localhost;dbname=cma;charset=utf8', 'root', '');
    }
    catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }

    // Mise à jour de l'historique des ventes
    if(isset($_POST['code']) AND isset($_POST['designation']) AND isset($_POST['quantite']) AND isset($_POST['prix_total']) AND isset($_POST['nom_vendeur']) AND isset($_POST['date_peremption'])) {

        $req = $bdd->prepare("INSERT INTO 
                historique(date_vente, code, designation, date_peremption, quantite, prix_total, nom_vendeur)
                VALUES(NOW(), ?, ?, ?, ?, ?, ?)
                ") or die(print_r($bdd->errorInfo()));
        $req->execute(
            array( 
                $_POST['code'],
                $_POST['designation'],
                $_POST['date_peremption'],
                $_POST['quantite'],
                $_POST['prix_total'],
                $_POST['nom_vendeur']
            )
        );

        echo json_encode($_POST['code']);
    }
?>