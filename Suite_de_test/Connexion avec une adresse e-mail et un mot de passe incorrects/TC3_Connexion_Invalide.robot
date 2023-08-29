*** Settings ***
Resource    ./Function_Connexion_Invalide/Function_Connexion_Invalide.robot
Resource    ../Function_Global/Fuction_Global.robot 

*** Test Cases ***
Utilisateur de connexion avec une adresse e-mail et un mot de passe incorrects
    Lancer le navigateur
    Accédez à l'URL 'http://automationexercise.com'
    Vérifiez que la page d'accueil est visible avec succès
    Cliquez sur le bouton 'Inscription / Connexion'
    Vérifiez que "Connexion à votre compte" est visible
    Entrez une adresse e-mail et un mot de passe incorrects
    Cliquez sur le bouton "Connexion"
    Vérifiez l'erreur 'Votre e-mail ou votre mot de passe est incorrect !' est visible
    fermer_navigateur


