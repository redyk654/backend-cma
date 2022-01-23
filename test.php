<?php
    try {
	    $bdd = new PDO('mysql:host=localhost;dbname=cma;charset=utf8', 'root', '');
    }
    catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }

    $a = 'caisse';

    $req = $bdd->prepare("UPDATE utilisateurs SET rol = ?");

    $req->execute(
        array(
            $a,
        )
    );

    $req2 = $bdd->prepare("UPDATE utilisateurs_caisse SET rol = ?");

    $req2->execute(
        array(
            $a,
        )
    );
?>