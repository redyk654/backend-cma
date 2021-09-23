<?php
    header('Access-Control-Allow-Origin: *');

    try {
        $bdd = new PDO('mysql:host=localhost;dbname=cma;charset=utf8', 'root', '');
    }
    catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }

    if(isset($_POST['id_produit']) AND isset($_POST['qte'])) {
        // Mise à jour des stocks des médicaments vendus

        $req = $bdd->prepare("SELECT en_stock FROM medicaments WHERE id = ?");
        $req->execute(
            array(
                $_POST['id_produit'],
            )
        );

        $data = $req->fetch();
        $nv_stock = $data['en_stock'] - $_POST['qte'];

        $req2 = $bdd->prepare("UPDATE medicaments SET en_stock = ? WHERE id = ?");

        $req2->execute(
            array(
                $nv_stock,
                $_POST['id_produit']
            )
        );
    } elseif (isset($_POST['produit'])) {
        $produit = json_decode($_POST['produit'], true);
        
        $req = $bdd->prepare("INSERT INTO 
                medicaments(id, code, designation, categorie, pu_vente, pu_achat, conditionnement, en_stock, min_rec, date_peremption, date_approv)
                VALUES('', :code, :designation, :categorie, :pu_vente, :pu_achat, :conditionnement, :en_stock, :min_rec, :date_peremption, NOW())");
        
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