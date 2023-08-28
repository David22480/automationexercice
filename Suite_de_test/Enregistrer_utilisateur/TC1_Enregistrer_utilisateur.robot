*** Settings ***
Resource    ./Function_EU/Function_EU.robot  


*** Test Cases ***
Cas de test 1 : Enregistrer l'utilisateur
#
    Lancer le navigateur
    Accédez à l'URL 'http://automationexercise.com'
    Vérifiez que la page d'accueil est visible avec succès
    Cliquez sur le bouton 'Inscription / Connexion'
    Vérifiez 'Inscription d'un nouvel utilisateur !' est visible
    #Generate Random Email
    Entrez le nom et l'adresse e-mail
    Cliquez sur le bouton "S'inscrire"
    Vérifiez que 'ENTER ACCOUNT INFORMATION' est visible
    Remplissez les détails : titre, nom, e-mail, mot de passe, date de naissance
    Cochez la case 'Inscrivez-vous à notre newsletter !'
    Cochez la case "Recevez les offres spéciales de nos partenaires !"
    Remplissez les détails : prénom, nom, société, adresse, adresse2, pays, état, ville, code postal, numéro de téléphone portable
    Cliquez sur le bouton "Créer un compte"
    Vérifiez que 'COMPTE CRÉÉ !' est visible
    Cliquez sur le bouton "Continuer"
    Vérifiez que "Connecté en tant que nom d'utilisateur" est visib
    Cliquez sur le bouton "Supprimer le compte"
    Vérifiez que 'COMPTE SUPPRIMÉ !' est visible et cliquez sur le bouton 'Continuer'
    fermer_navigateur