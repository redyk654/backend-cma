<?php
    header('Access-Control-Allow-Origin: *');

    try {
        $bdd = new PDO('mysql:host=localhost;dbname=cma;charset=utf8', 'root', '');
    }
    catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }

    if (isset($_POST['designation']) AND isset($_POST['prix'])) {
        // Insertion d'un nouveau service

        $req = $bdd->prepare("INSERT INTO services(designation, prix) VALUES(?, ?)") or die(print_r($bdd->errorInfo()));
        $req->execute(
            array(
                $_POST['designation'],
                $_POST['prix'],
            )
        );

    }
?>