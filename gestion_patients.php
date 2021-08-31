<?php
    header('Access-Control-Allow-Origin: *');

    try {
	    $bdd = new PDO('mysql:host=localhost;dbname=cma;charset=utf8', 'root', '');
    }
    catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }

    if (isset($_POST['nom_patient'])) {
        // Insertion d'un nouveau patient

        $req = $bdd->prepare("INSERT INTO patients(nom) VALUES(?)") or die(print_r($bdd->errorInfo()));
        $req->execute(
            array(
                $_POST['nom_patient']
            )
        );

    } else {
        // Récupération des patients enregistrés

        $req = $bdd->query("SELECT * FROM patients");
        $data = $req->fetchAll();
        
        echo json_encode(($data));
    }
?>