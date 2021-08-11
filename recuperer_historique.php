<?php
    header('Access-Control-Allow-Origin: *');

    try {
	    $bdd = new PDO('mysql:host=localhost;dbname=cma;charset=utf8', 'root', '');
    }
    catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }

    if (isset($_POST['code']) AND isset($_POST['designation'])) {

        //Recupération de l'historique de sortie d'un produit dans la base

        $req = $bdd->prepare("SELECT *, DATE_FORMAT(date_vente, '%d/%m/%Y %Hh%imin%ss') AS date_vente FROM historique WHERE (code = ? AND designation = ?)") or die(print_r($bdd->errorInfo()));
        $req->execute(
            array(
                $_POST['code'],
                $_POST['designation']
            )
        );

        $data = $req->fetchAll();

        echo json_encode($data);
    } else if (isset($_POST['id'])) {
        
        // Récupération du stock initiale d'un produit daans la base

        $req = $bdd->prepare("SELECT stock_commande FROM approvisionnement WHERE id = ?");

        $req->execute(
            array(
                $_POST['id'],
            )
        );

        $data = $req->fetch();

        echo json_encode($data);
    } else {
        // Récupération des produits pour l'historique
        $req = $bdd->query("SELECT * FROM approvisionnement") or die(print_r($bdd->errorInfo()));
        $data = $req->fetchAll();
        
        echo json_encode($data);
    }
?>