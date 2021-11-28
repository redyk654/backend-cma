<?php 
        try {
            $bdd = new PDO('mysql:host=localhost;dbname=291218;charset=utf8', '291218', 'Senpai2.0');
        }
        catch (Exception $e) {
            die('Erreur : ' . $e->getMessage());
        }
    
        $req = $bdd->query("SELECT * FROM medicaments") or die(print_r($bdd->errorInfo()));
        $data = $req->fetchAll();
        echo json_encode($data)
?>