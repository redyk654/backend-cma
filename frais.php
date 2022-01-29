<?php 
    header('Access-Control-Allow-Origin: *');

    //Récupération des frais matériel

    try {
	    $bdd = new PDO('mysql:host=localhost;dbname=cma;charset=utf8', 'root', '');
    }
    catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }

    if (isset($_POST['dateD']) AND isset($_POST['dateF']) AND isset($_POST['caissier']) AND isset($_GET['moment'])) {
        if ($_GET['moment'] == "nuit") {
            $debut = $_POST['dateD'] . ' 14:00:00';
            $fin = $_POST['dateF'] . ' 11:00:00';
        } else if ($_GET['moment'] == "jour") {
            $debut = $_POST['dateD'] . ' 06:00:00';
            $fin = $_POST['dateF'] . ' 20:00:00';
        }
    
        $req = $bdd->prepare('SELECT SUM(frais) as frais FROM facture_caisse
        WHERE caissier = :caissier AND (date_heure BETWEEN :precedent AND :actuel)') or die(print_r($bdd->errorInfo()));
        $req->execute(
            array(
                'caissier' => $_POST['caissier'],
                'precedent' => $debut,
                'actuel' => $fin,
            )
        );
        
        $data = $req->fetchAll();
        echo json_encode($data);
    }

?>