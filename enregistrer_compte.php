<?php
    header('Access-Control-Allow-Origin: *');

    // Enregistrement d'un nouveau compte

    try {
	    $bdd = new PDO('mysql:host=localhost;dbname=cma;charset=utf8', 'root', '');
    }
    catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }

    if(isset($_POST['nom']) AND isset($_POST['mdp']) AND isset($_POST['role'])) {
        $message = null;
        
        $req1 = $bdd->prepare("SELECT * FROM utilisateurs WHERE pseudo = ?");
        $req1->execute(
            array(
                $_POST['pseudo']
            )
        );

        $data = $req1->fetch();

        if ($data) {
            $message = "ce pseudo est déjà utilisé. choisissez en un autre";
        } else {
            $req2 = $bdd->prepare("SELECT * FROM utilisateurs WHERE nom_user = ?");
            $req2->execute(
                array(
                    $_POST['nom']
                )
            );
    
            $data = $req2->fetch();

            if($data) {
                $message = "ce nom déjà utilisé. choisissez en un autre";
            } else {
                $mdp_hash = password_hash($_POST['mdp'], PASSWORD_DEFAULT); // Hashage du mot de passe
                
                $req = $bdd->prepare("INSERT INTO utilisateurs(nom_user, pseudo, mdpasse, rol) VALUES(:nom, :pseudo, :mdp, :rol)");
        
                $req->execute(
                    array(
                        'nom' => $_POST['nom'],
                        'pseudo' => $_POST['pseudo'],
                        'mdp' => $mdp_hash,
                        'rol' => $_POST['role']
                    )
                );
            }
        }

        if($message) {
            echo $message;
        }

    }
?>