*** Settings ***
Resource    ./Function_EU_Email_Exisitante/Function_EU_Email_Exisitante.robot    
Resource    ../Function_Global/Fuction_Global.robot
*** Test Cases ***
Enregistrer un utilisateur avec une adresse e-mail existante/Function_EU_Email_Exisitante
    Lancer le navigateur
    Accédez à l'URL 'http://automationexercise.com'
    Vérifiez que la page d'accueil est visible avec succès
    Cliquez sur le bouton 'Inscription / Connexion'
    Entrez uti avec une adresse e-mail existante
    Cliquez sur le bouton "S'inscrire"
    Affichage msg erreur email adress existante
    