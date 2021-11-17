<?php
    try {
	    $bdd = new PDO('mysql:host=localhost;dbname=cma;charset=utf8', 'root', '');
    }
    catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }

    $date1 = '2021-11-15 07:28:44';
    $date2 = '2021-11-15 15:28:44';

    $req = $bdd->prepare("SELECT SUM(prix) AS prix, COUNT(prix) AS nb, designation FROM historique_services WHERE date_heure BETWEEN ? AND ? GROUP BY designation");

    $req->execute(
        array(
            $date1,
            $date2,
        )     
    );

    $data = $req->fetchAll();

    echo json_encode($data);
?>