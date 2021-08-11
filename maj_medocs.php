<?php
    header('Access-Control-Allow-Origin: *');

    try {
        $bdd = new PDO('mysql:host=localhost;dbname=cma;charset=utf8', 'root', '');
    }
    catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }

    if(isset($_POST['id_medoc_restant']) AND isset($_POST['stock_restant'])) {
        // Mise à jour des stocks des médicaments vendus

        $req = $bdd->prepare("UPDATE medicaments SET en_stock = ? WHERE id = ?");
        $req->execute(
            array(
                $_POST['stock_restant'],
                $_POST['id_medoc_restant']
            )
        );
    } elseif (isset($_POST['produit'])) {
        $produit = json_decode($_POST['produit'], true);
        
        $req = $bdd->prepare("INSERT INTO 
                medicaments(id, code, designation, categorie, pu_vente, pu_achat, conditionnement, en_stock, min_rec, date_peremption)
                VALUES('', :code, :designation, :categorie, :pu_vente, :pu_achat, :conditionnement, :en_stock, :min_rec, :date_peremption)");
        
        $req->execute(
            array(
                'code' => $produit['code'],
                'designation' => $produit['designation'],
                'categorie' => $produit['categorie'],
                'pu_vente' => $produit['pu_vente'],
                'pu_achat' => $produit['pu_achat'],
                'conditionnement' => $produit['conditionnement'],
                'en_stock' => $produit['stock_ajoute'],
                'min_rec' => $produit['min_rec'],
                'date_peremption' => $produit['date_peremption']
            )
        );
    }
?>