<?php
    header('Access-Control-Allow-Origin: *');

    //Recupération des comptes pour verification lors de la connexion

    try {
	    $bdd = new PDO('mysql:host=localhost;dbname=cma;charset=utf8', 'root', '');
    }
    catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }
    
    if (isset($_POST['code_facture'])) {
        // Maj du code facture
        $id=1;
        $req2 = $bdd->prepare("UPDATE code_facture_phar SET code_facture = ? WHERE id = ?");
    
        $req2->execute(
            array(
                $_POST['code_facture'],
                $id
            )
        );
    } else {
        // Récupération du code facture
        $req = $bdd->query("SELECT id, code_facture FROM code_facture_phar") or die(print_r($bdd->errorInfo()));
    
        $data = $req->fetchAll();
    
        echo json_encode($data);
    }

?>