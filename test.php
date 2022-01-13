<?php
    try {
	    $bdd = new PDO('mysql:host=localhost;dbname=cma;charset=utf8', 'root', '');
    }
    catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }

    $date1 = 344;
    $date2 = 344;
    $a = 48;

    $req = $bdd->prepare("UPDATE medicaments SET pu_vente = ((SELECT pu_vente FROM medicaments WHERE id = ?) + ?) WHERE id = ?");

    $req->execute(
        array(
            $date1,
            $a,
            $date2,
        )
    );

    $data = $req->fetchAll();

    echo json_encode($data);
?>