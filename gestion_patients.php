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

        $req = $bdd->prepare("INSERT INTO patients(code_patient, nom, assurance, type_assurance, date_creation) VALUES(?, ?, ?, ?, NOW())") or die(print_r($bdd->errorInfo()));
        $req->execute(
            array(
                $_POST['code_patient'],
                $_POST['nom_patient'],
                $_POST['assurance'],
                $_POST['type_assurance'],          
            )
        );

    } else {
        // Récupération des patients enregistrés

        $req = $bdd->query("SELECT * FROM patients ORDER BY nom LIMIT 15");
        $data = $req->fetchAll();
        
        echo json_encode(($data));
    }
?>