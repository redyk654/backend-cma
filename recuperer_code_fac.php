<?php
    header('Access-Control-Allow-Origin: *');

    //Recupération des comptes pour verification lors de la connexion

    try {
	    $bdd = new PDO('mysql:host=localhost;dbname=cma;charset=utf8', 'root', '');
    }
    catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }
    
    if (isset($_GET['code_facture'])) {
        // Maj du code facture
        $id=$_GET['id'];
        $req2 = $bdd->prepare("UPDATE code_facture_phar SET code_facture = ? WHERE id = ?");
    
        $req2->execute(
            array(
                $_GET['code_facture'],
                $id
            )
        );
    } else if (isset($_GET['id'])) {
        // Récupération du code facture
        $req = $bdd->prepare("SELECT id, code_facture FROM code_facture_phar WHERE id = ?") or die(print_r($bdd->errorInfo()));
        $req->execute([$_GET['id']]);

        $data = $req->fetchAll();
    
        echo json_encode($data);
    }

?>