<?php
    header('Access-Control-Allow-Origin: *');

    try {
	    $bdd = new PDO('mysql:host=localhost;dbname=cma;charset=utf8', 'root', '');
    }
    catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }

    //Recupération de l'historique des services de la caisse

    if(isset($_GET['date'])) {

        if (isset($_GET['recette']) && isset($_GET['date'])) {
            $req = $bdd->prepare("SELECT SUM(prix) AS recette FROM historique_services WHERE date_fait = ?") or die(print_r($bdd->errorInfo()));
        
            $req->execute(
                array(
                    $_GET['date']
                )
            );
        
            $data = $req->fetchAll();
        
            echo json_encode($data);
        } else {

            $req = $bdd->prepare("SELECT *, DATE_FORMAT(date_fait, '%d/%m/%Y') AS date_fait, DATE_FORMAT(heure_fait, '%Hh%imin%ss') AS heure_fait FROM historique_services WHERE date_fait = ? ORDER BY id DESC") or die(print_r($bdd->errorInfo()));
        
            $req->execute(
                array(
                    $_GET['date']
                )
            );
        
            $data = $req->fetchAll();
        
            echo json_encode($data);
        }

    }
?>