*** Settings ***
Resource    ./Function_deconnecter_utilisateur/Function_deconnecter_utilisateur.robot
Resource    ../Function_Global/Fuction_Global.robot

*** Test Cases ***
deconnexion utilisateur
    lancer le navigateur
    Accédez à l'URL 'http://automationexercise.com'
    Vérifiez que la page d'accueil est visible avec succès
    Cliquez sur le bouton 'Inscription / Connexion'
    Vérifiez que "Connexion à votre compte" est visible
    Entrez l'adresse e-mail et le mot de passe corrects
    Cliquez sur le bouton "Connexion"
    Vérifiez que "Connecté en tant que nom d'utilisateur" est visib
    Cliquez sur le bouton "Déconnexion"
    Vérifiez que l'utilisateur est dirigé vers la page de connexion
    fermer_navigateur
    