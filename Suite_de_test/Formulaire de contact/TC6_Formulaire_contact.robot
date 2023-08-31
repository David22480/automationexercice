*** Settings ***
Resource    ./Function_Formulaire_contact/Function_Formulaire_contact.robot    
Resource    ../Config_Global/Config_global.robot
Resource    ../Function_Global/Fuction_Global.robot

*** Test Cases ***
Formulaire contact
    Lancer le navigateur
    Accédez à l'URL 'http://automationexercise.com'
    Vérifiez que la page d'accueil est visible avec succès
    Cliquez sur le bouton « Contactez-nous »
    Vérifiez que « GET IN TOUCH » est visible
    Entrez le nom, l'e-mail, le sujet et le message
    Téléchargez le fichier
