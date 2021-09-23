<?php
    header('Access-Control-Allow-Origin: *');

    //Récupération des recettes à gérer

    try {
	    $bdd = new PDO('mysql:host=localhost;dbname=cma;charset=utf8', 'root', '');
    }
    catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }

    if (isset($_POST['code']) AND isset($_POST['caissier']) AND isset($_GET['moment'])) {

        if ($_GET['moment'] == "nuit") {

            if ($_POST['code'] == 'PHA') {
    
                // Ici on ne récupère que la recette de la pharmacie entre 15h et 10h30
                $actuel = date('Y-m-d');
                $precedent = date('Y-m-d', strtotime($actuel. ' -1 days'));
                $actuel .= ' 12:00:00';
                $precedent .= ' 15:00:00';
                
                $req = $bdd->prepare('SELECT SUM(prix_total) AS recette FROM facture_pharmacie
                                     WHERE caissier = :caissier AND (date_heure BETWEEN :precedent AND :actuel)') or die(print_r($bdd->errorInfo()));
                $req->execute(
                    array(
                        'caissier' => $_POST['caissier'],
                        'precedent' => $precedent,
                        'actuel' => $actuel
                    )
                );    
            } else {
                // Ici on récupère la recette des services entre 15h et 10h30
                $code = $_POST['code'].'%';
                $actuel = date('Y-m-d');
                $precedent = date('Y-m-d', strtotime($actuel. ' -1 days'));
                $actuel .= ' 12:00:00';
                $precedent .= ' 15:00:00';
                
                $req = $bdd->prepare('SELECT SUM(prix) AS recette FROM historique_services
                                     WHERE designation LIKE :code AND caissier = :caissier AND (date_heure BETWEEN :precedent AND :actuel)') or die(print_r($bdd->errorInfo()));
                $req->execute(
                    array(
                        'code' => $code,
                        'caissier' => $_POST['caissier'],
                        'precedent' => $precedent,
                        'actuel' => $actuel
                    )
                );  
            }

        } else if ($_GET['moment'] == "jour") {

            if ($_POST['code'] == 'PHA') {
                // Ici on récupère la recette de la pharmacie entre 7h et 20h

                $actuel = date('Y-m-d');
                $suivant = $actuel . ' 20:00:00';
                $actuel .= ' 06:00:00';

                $req = $bdd->prepare('SELECT SUM(prix_total) AS recette FROM facture_pharmacie
                WHERE caissier = :caissier AND (date_heure BETWEEN :actuel AND :suivant)') or die(print_r($bdd->errorInfo()));
                $req->execute(
                    array(
                        'caissier' => $_POST['caissier'],
                        'actuel' => $actuel,
                        'suivant' => $suivant
                    )
                );

            } else {
                // Ici on récupère la recette des services entre 7h et 20h
                $code = $_POST['code'].'%';
                $actuel = date('Y-m-d');
                $suivant = $actuel . ' 20:00:00';
                $actuel .= ' 06:00:00';

                $req = $bdd->prepare('SELECT SUM(prix) AS recette FROM historique_services
                WHERE designation LIKE :code AND caissier = :caissier AND (date_heure BETWEEN :actuel AND :suivant)') or die(print_r($bdd->errorInfo()));
                $req->execute(
                    array(
                        'code' => $code,
                        'caissier' => $_POST['caissier'],
                        'actuel' => $actuel,
                        'suivant' => $suivant
                    )
                );
            }
        }

        $data = $req->fetch();
        echo json_encode($data);
    } else if (isset($_POST['id_recette']) AND isset($_POST['recette_total']) AND isset($_POST['generalite']) AND isset($_POST['montant_retire']) AND isset($_POST['recette_restante']) AND isset($_POST['caissier']) AND isset($_POST['regisseur'])) {
        // Insertion des recette calculés

        $req = $bdd->prepare("INSERT 
        INTO recettes_enregistres(id_recette, recette_total, generalite, montant_retire, recette_restante, caissier, regisseur, date_heure)
        VALUES(:id_recette, :recette_total, :generalite, :montant_retire, :recette_restante, :caissier, :regisseur, NOW())") or die(print_r($bdd->errorInfo()));

        $req->execute(
            array(
                'id_recette' => $_POST['id_recette'],
                'recette_total' => $_POST['recette_total'],
                'generalite' => $_POST['generalite'],
                'montant_retire' => $_POST['montant_retire'],
                'recette_restante' => $_POST['recette_restante'],
                'caissier' => $_POST['caissier'],
                'regisseur' => $_POST['regisseur'],
            )
        );
    } else if (isset($_POST['id_recette']) AND isset($_POST['categorie']) AND isset($_POST['recette']) AND isset($_POST['pourcentage']) AND isset($_POST['recette_restante'])) {
        // Insertion des détails de la recette calculé

        $req = $bdd->prepare("INSERT INTO
        details_recette(id_recette, categorie, recette, pourcentage, recette_restante)
        VALUES(:id_recette, :categorie, :recette, :pourcentage, :recette_restante)") or die(print_r($bdd->errorInfo()));

        $req->execute(
            array(
                'id_recette' => $_POST['id_recette'],
                'categorie' => $_POST['categorie'],
                'recette' => $_POST['recette'],
                'pourcentage' => $_POST['pourcentage'],
                'recette_restante' => $_POST['recette_restante'],
            )
        );

    } else if (isset($_GET['recuperer'])) {
        // Recupération de la liste des recettes

        $req = $bdd->query("SELECT *, DATE_FORMAT(date_heure, '%d/%m/%Y %Hh%imin%ss') AS date_heure FROM recettes_enregistres ORDER BY id DESC") or die(print_r($bdd->errorInfo()));

        $data = $req->fetchAll();

        echo json_encode($data);
    } else if (isset($_GET['id_recette'])) {
        $req = $bdd->prepare("SELECT * FROM details_recette WHERE id_recette = ?") or die(print_r($bdd->errorInfo()));

        $req->execute(
            array(
                $_GET['id_recette'],
            )
        );

        $data = $req->fetchAll();
        echo json_encode($data);
    }
?>