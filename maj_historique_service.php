<?php
    header('Access-Control-Allow-Origin: *');

    try {
	    $bdd = new PDO('mysql:host=localhost;dbname=cma;charset=utf8', 'root', '');
    }
    catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }

    // Mise à jour de l'historique des services
    if(isset($_POST['designation']) AND isset($_POST['prix_total']) AND isset($_POST['caissier'])) {

        if (isset($_POST['patient']) AND isset($_POST['reduction'])) {

            $req = $bdd->prepare("INSERT INTO 
                    historique_services(designation, prix, caissier, date_fait, heure_fait, patient, reduction)
                    VALUES(?, ?, ?, CURRENT_DATE() , CURRENT_TIME(), ?, ?)
                    ") or die(print_r($bdd->errorInfo()));
            $req->execute(
                array( 
                    $_POST['designation'],
                    $_POST['prix_total'],
                    $_POST['caissier'],
                    $_POST['patient'],
                    $_POST['reduction'],
                )
            );

        } elseif (isset($_POST['patient'])) {

            $req = $bdd->prepare("INSERT INTO 
                    historique_services(designation, prix, caissier, date_fait, heure_fait, patient)
                    VALUES(?, ?, ?, CURRENT_DATE() , CURRENT_TIME(), ?)
                    ") or die(print_r($bdd->errorInfo()));
            $req->execute(
                array( 
                    $_POST['designation'],
                    $_POST['prix_total'],
                    $_POST['caissier'],
                    $_POST['patient']
                )
            );

        } elseif (isset($_POST['reduction'])) {

            $req = $bdd->prepare("INSERT INTO 
                    historique_services(designation, prix, caissier, date_fait, heure_fait, reduction)
                    VALUES(?, ?, ?, CURRENT_DATE() , CURRENT_TIME(), ?)
                    ") or die(print_r($bdd->errorInfo()));
            $req->execute(
                array( 
                    $_POST['designation'],
                    $_POST['prix_total'],
                    $_POST['caissier'],
                    $_POST['reduction']
                )
            );

        } else {
            $req = $bdd->prepare("INSERT INTO 
                    historique_services(designation, prix, caissier, date_fait, heure_fait)
                    VALUES(?, ?, ?, CURRENT_DATE() , CURRENT_TIME())
                    ") or die(print_r($bdd->errorInfo()));
            $req->execute(
                array( 
                    $_POST['designation'],
                    $_POST['prix_total'],
                    $_POST['caissier'],
                )
            );
        }
    }
?>